# ensure-immutable-actions Test Repo

This repository is a caller/workflow-under-test for manual validation of
`Wuodan/ensure-immutable-actions`.

## What it does

- `targets-mutable.yml` references remote composite actions and a remote
  reusable workflow from `Wuodan/ensure-immutable-actions-test-custom-actions`
  using mutable `@main` refs
- `targets-immutable.yml` references the same remote targets using a full
  commit SHA
- `targets-unsupported.yml` references a SHA-pinned remote composite action
  that contains a `docker://...` step
- `validate-mutable-refs.yml` runs `Wuodan/ensure-immutable-actions` against
  `targets-mutable.yml`
- `validate-immutable-refs.yml` runs `Wuodan/ensure-immutable-actions` against
  `targets-immutable.yml`
- `validate-unsupported-refs.yml` runs `Wuodan/ensure-immutable-actions`
  against `targets-unsupported.yml`

## How to run it

Run one of these workflows manually in GitHub Actions:

- `validate-mutable-refs.yml` for the mutable `@main` scenario
- `validate-immutable-refs.yml` for the immutable full-SHA scenario
- `validate-unsupported-refs.yml` for the unsupported `docker://` scenario

The `targets-*.yml` workflows are the workflow files being scanned by the
action under test. They do not need to be run for the scanner validation
scenario.

## Expected behavior

The action under test should recurse into:

- remote composite actions
- nested remote composite actions via `./...`
- remote reusable workflows
- local `./...` references inside reusable workflows using this caller repo's
  workspace

The mutable scenario should report the remote refs as mutable.

The immutable scenario should report the same remote refs as immutable because
they are pinned to the full commit SHA
`db88ac462544346b5880f6c04a69486f72ce7173`.

The unsupported scenario should report `docker://alpine:3.20` as unsupported.
