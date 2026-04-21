#!/usr/bin/env node

// Normalize fixture refs in a JSON snapshot.
// Mutable fixture refs become __FIXTURE_MUTABLE_REF__.
// Full-SHA fixture refs become __FIXTURE_IMMUTABLE_REF__.
// This keeps expected JSON stable when fixture branch names or SHAs change.

import fs from 'node:fs';

const inputFile = process.argv[2];
const fixturesRepository = process.env.FIXTURES_REPOSITORY;
const fixturesRepo = process.env.FIXTURES_REPO;

if (!inputFile) {
  console.error('usage: normalize-fixture-refs.mjs <json-file>');
  process.exit(1);
}

if (!fixturesRepository) {
  console.error('FIXTURES_REPOSITORY is required');
  process.exit(1);
}

if (!fixturesRepo) {
  console.error('FIXTURES_REPO is required');
  process.exit(1);
}

const fullShaPattern = /^[A-Fa-f0-9]{40}$/;

function fixturePlaceholder(ref) {
  if (ref === '__FIXTURE_IMMUTABLE_REF__' || ref === '__FIXTURE_MUTABLE_REF__') {
    return ref;
  }
  return fullShaPattern.test(ref) ? '__FIXTURE_IMMUTABLE_REF__' : '__FIXTURE_MUTABLE_REF__';
}

function normalizeUsesValue(value) {
  if (typeof value !== 'string') {
    return value;
  }
  if (!value.startsWith(`${fixturesRepository}/`)) {
    return value;
  }

  const atIndex = value.lastIndexOf('@');
  if (atIndex === -1) {
    return value;
  }

  const prefix = value.slice(0, atIndex + 1);
  const ref = value.slice(atIndex + 1);
  return `${prefix}${fixturePlaceholder(ref)}`;
}

function normalizeValue(value, currentRepo) {
  if (Array.isArray(value)) {
    return value.map(item => normalizeValue(item, currentRepo));
  }

  if (!value || typeof value !== 'object') {
    return value;
  }

  const repoForObject = typeof value.repo === 'string' ? value.repo : currentRepo;
  const normalized = {};

  for (const [key, child] of Object.entries(value)) {
    if (key === 'uses' || key === 'entrypointUses') {
      normalized[key] = normalizeUsesValue(child);
      continue;
    }

    if (key === 'ref' && repoForObject === fixturesRepo && typeof child === 'string') {
      normalized[key] = fixturePlaceholder(child);
      continue;
    }

    normalized[key] = normalizeValue(child, repoForObject);
  }

  return normalized;
}

function stringKey(value) {
  return typeof value === 'string' ? value : '';
}

function actionKey(action) {
  return [
    stringKey(action?.uses),
    stringKey(action?.entrypointUses),
    stringKey(action?.ref),
    stringKey(action?.sourceWorkflowFile),
    stringKey(action?.sourceJobName),
    stringKey(action?.sourceStepName),
    stringKey(action?.workflowFile),
    stringKey(action?.jobName),
    stringKey(action?.stepName),
    stringKey(action?.actionPath),
    stringKey(action?.message)
  ].join('\u0000');
}

const parsed = JSON.parse(fs.readFileSync(inputFile, 'utf8'));
for (const key of ['mutable-actions', 'immutable-actions', 'unsupported-actions', 'first-party-actions']) {
  if (Array.isArray(parsed[key])) {
    parsed[key].sort((a, b) => actionKey(a).localeCompare(actionKey(b)));
  }
}
const normalized = normalizeValue(parsed, null);
process.stdout.write(`${JSON.stringify(normalized, null, 2)}\n`);
