# ensure-immutable-actions Test Repo

This repository is a caller/workflow-under-test for manual validation of
`Wuodan/ensure-immutable-actions`.

## What it does

- `validate-targets.yml` references remote composite actions and a remote reusable
  workflow from `Wuodan/ensure-immutable-actions-test-custom-actions`
- `validate-remote-recursion.yml` runs `Wuodan/ensure-immutable-actions` against
  `validate-targets.yml`

## Expected behavior

The action under test should recurse into:

- remote composite actions
- nested remote composite actions via `./...`
- remote reusable workflows
- local `./...` references inside reusable workflows using this caller repo's
  workspace
