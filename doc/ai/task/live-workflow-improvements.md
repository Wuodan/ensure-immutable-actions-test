# Live Workflow Improvement Notes

## Context

This repository is a test suite for a fork of `ensure-immutable-actions`.

Current forkability support is limited to fixture indirection:

- `scripts/render-fixtures.sh` replaces `__FIXTURES_REPOSITORY__`, `__FIXTURES_OWNER__`, and `__FIXTURES_REPO__`
- `.github/workflows/validate-refs.yml` still hardcodes the action under test as `Wuodan/ensure-immutable-actions@v2.5.2-pr.1`

The comparison repository `../bulk-github-repo-settings-sync-action-live-tests/` has a more flexible approach in `.github/workflows/live-integration.yml`:

- `workflow_dispatch` inputs for `repository`, `ref`, `pr`, `suite`, and `prepare-only`
- a `resolve-ref` job that resolves PR heads and normalizes the action source to test
- checkout of the action under test into `./action`
- execution of the tested action via `uses: ./action/` instead of a hardcoded remote reference

## Findings

### Current repo

- `validate-refs.yml` is manually dispatchable, but only exposes `skip_output_assertions`
- the action under test is hardcoded in:
  - `.github/workflows/validate-refs.yml:125`
  - `.github/workflows/validate-refs.yml:193`
- fixture rendering mutates files in place:
  - copies `testdata/workflows/targets-*.yml` into `.github/workflows/`
  - rewrites `testdata/expected/*.json`

### Comparison repo

- `.github/workflows/live-integration.yml` exposes runtime selection of the action repository and ref
- the action source is resolved once, then reused by dependent jobs
- jobs checkout the action under test into `action/` and invoke it locally
- the workflow emits a clear summary of the resolved source under test
- preparation and execution are separated, and subsets of the suite can be run selectively

## Recommended Improvements

### Priority 1

1. Add `workflow_dispatch` inputs to select the action under test.
   - `repository`
   - `ref`
   - optional `pr`

2. Add a `resolve-ref` job.
   - If `pr` is set, resolve the PR head repository and branch.
   - Otherwise, pass through `repository` and `ref`.

3. Replace hardcoded remote action usage with a local checkout.
   - Checkout the tested action into `path: action`
   - Change scan steps from `uses: Wuodan/ensure-immutable-actions@...` to `uses: ./action`

4. Expose the fixtures repository as a dispatch input.
   - Use the current `vars.FIXTURES_REPOSITORY` as the default
   - Avoid requiring repo-variable changes just to test another fork

### Priority 2

5. Add run metadata to the workflow summary and run name.
   - Include resolved action repo/ref
   - Include PR number when applicable

6. Reduce duplication in setup steps.
   - shared checkout/render/token setup between `validate` and `validate-fail-on-mutable`
   - possible extraction into a script or composite action

7. Add limited scenario selection.
   - possible input values:
     - `all`
     - `validate`
     - `fail-on-mutable`

### Priority 3

8. Stop mutating tracked expected files in place.
   - Render to a generated directory such as `.tmp/rendered/...`
   - Point the workflow assertions at rendered outputs

9. Evaluate whether the tested action needs a build/package step before local execution.
   - Needed if the action is a compiled JS action and `dist/` is not sufficient as checked out

## Suggested Minimal First Implementation

This is the smallest useful upgrade that captures most of the value from the other repo:

1. Add `repository`, `ref`, `pr`, and `fixtures_repository` dispatch inputs
2. Add `resolve-ref`
3. Checkout the tested action into `./action`
4. Change the two scan steps to `uses: ./action`
5. Add a short summary showing exactly which action repo/ref was tested

## Relevant Files

Current repo:

- `.github/workflows/validate-refs.yml`
- `scripts/render-fixtures.sh`
- `README.md`

Comparison repo:

- `../bulk-github-repo-settings-sync-action-live-tests/.github/workflows/live-integration.yml`
- `../bulk-github-repo-settings-sync-action-live-tests/README.md`
