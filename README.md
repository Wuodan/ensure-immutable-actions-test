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
- `validate-refs.yml` runs `Wuodan/ensure-immutable-actions` against all three
  target workflows, validates the action outputs for each scenario, and checks
  that `fail-on-mutable: true` fails the mutable scenario

## How to run it

Run `validate-refs.yml` manually in GitHub Actions.

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
`3aa32f4195cfe2c317e08bf59720997b7cecf3b7`.

The unsupported scenario should report `docker://alpine:3.20` as unsupported.
