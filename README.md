# ensure-immutable-actions Test Repo

This repository is a caller/workflow-under-test for manual validation of
`ensure-immutable-actions`.

## What it does

- `targets-mutable.yml` references remote composite actions and a remote
  reusable workflow from the companion fixtures repo using mutable `@main` refs
- `targets-immutable.yml` references the same remote targets using a full
  commit SHA
- `targets-unsupported.yml` references a SHA-pinned remote composite action
  that contains a `docker://...` step
- `validate-refs.yml` runs `ensure-immutable-actions` against all three target
  workflows, validates the action outputs for each scenario, and checks that
  `fail-on-mutable: true` fails the mutable scenario

## How to run it

Configure the GitHub App credentials used for recursion into the companion
repo, then run `validate-refs.yml` manually in GitHub Actions.

The workflow accepts these manual dispatch inputs:

- `repository`: action repository to test, defaults to
  `joshjohanning/ensure-immutable-actions`
- `ref`: branch, tag, or SHA to test, defaults to `main`
- `pr`: PR number to test, which overrides `ref`
- `fixtures_repository`: companion fixtures repository, defaults to
  `Wuodan/ensure-immutable-actions-test-custom-actions`
- `skip_output_assertions`: skip hardcoded output assertions and only run the
  validation workflows

Examples:

- test the default branch of the default action repo: leave the defaults
- test a branch from your fork: set `repository` to your fork and `ref` to the
  branch name
- test a PR: set `repository` to the base action repo and set `pr`

The `targets-*.yml` workflows are the workflow files being scanned by the
action under test. They do not need to be run for the scanner validation
scenario.

Required repository configuration:

- Actions variable `APP_ID`: GitHub App ID
- Actions secret `APP_PRIVATE_KEY`: private key for that GitHub App

Override `fixtures_repository` when dispatching the workflow if you want to use
your own companion repo. Fork or provide that companion repository as well when
extending this suite.

The GitHub App should be installed on the companion fixtures repository with
`contents: read`.

## Expected behavior

The action under test should recurse into:

- remote composite actions
- nested remote composite actions via `./...`
- remote reusable workflows
- local `./...` references inside reusable workflows using this caller repo's
  workspace
- nested local reusable workflow references that recurse again via `./...`

The mutable scenario should report the remote refs as mutable.

The immutable scenario should report the same remote refs as immutable because
they are pinned to the full commit SHA
`3aa32f4195cfe2c317e08bf59720997b7cecf3b7`.

The unsupported scenario should report `docker://alpine:3.20` as unsupported.
