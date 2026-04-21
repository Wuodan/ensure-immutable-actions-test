#!/usr/bin/env bash
set -euo pipefail

# Normalize fixture refs in a JSON snapshot.
# Mutable fixture refs become __FIXTURE_MUTABLE_REF__.
# Full-SHA fixture refs become __FIXTURE_IMMUTABLE_REF__.
# This keeps expected JSON stable when fixture branch names or SHAs change.

if [[ $# -ne 1 ]]; then
  echo "usage: $0 <json-file>" >&2
  exit 1
fi

if [[ -z "${FIXTURES_REPOSITORY:-}" ]]; then
  echo "FIXTURES_REPOSITORY is required" >&2
  exit 1
fi

if [[ -z "${FIXTURES_OWNER:-}" ]]; then
  echo "FIXTURES_OWNER is required" >&2
  exit 1
fi

if [[ -z "${FIXTURES_REPO:-}" ]]; then
  echo "FIXTURES_REPO is required" >&2
  exit 1
fi

input_file="$1"

jq \
  --arg fixtures_repository "$FIXTURES_REPOSITORY" \
  --arg fixtures_owner "$FIXTURES_OWNER" \
  --arg fixtures_repo "$FIXTURES_REPO" \
  '
  def is_placeholder:
    . == "__FIXTURE_IMMUTABLE_REF__" or . == "__FIXTURE_MUTABLE_REF__";

  def is_full_sha:
    type == "string" and test("^[A-Fa-f0-9]{40}$");

  def fixture_ref_placeholder($ref):
    if ($ref | is_placeholder) then
      $ref
    elif ($ref | is_full_sha) then
      "__FIXTURE_IMMUTABLE_REF__"
    else
      "__FIXTURE_MUTABLE_REF__"
    end;

  def normalize_fixture_uses:
    if type == "string" and startswith($fixtures_repository + "/") and test("@[^@]+$") then
      capture("^(?<prefix>.*)@(?<ref>[^@]+)$") as $parts
      | "\($parts.prefix)@" + fixture_ref_placeholder($parts.ref)
    else
      .
    end;

  def normalize_fixture_object:
    . as $obj
    | (if ($obj.uses? | type) == "string" then .uses |= normalize_fixture_uses else . end)
    | (if ($obj.entrypointUses? | type) == "string" then .entrypointUses |= normalize_fixture_uses else . end)
    | if
        ($obj.owner? == $fixtures_owner) and
        ($obj.repo? == $fixtures_repo) and
        (($obj.ref? | type) == "string")
      then
        .ref = fixture_ref_placeholder($obj.ref)
      else
        .
      end;

  walk(
    if type == "object" then
      normalize_fixture_object
    else
      .
    end
  )
  | .["mutable-actions"] |= sort_by(.uses)
  | .["immutable-actions"] |= sort_by(.uses)
  | .["unsupported-actions"] |= sort_by(.uses)
  | .["first-party-actions"] |= sort_by(.uses)
  | .["workflows-checked"] |= sort
  | .["unsupported-actions"] |= map(
      if (.sourceLocations? | type) == "array" then
        .sourceLocations |= sort_by(.workflowFile, .jobName, .stepName)
      else
        .
      end
    )
  ' "$input_file"
