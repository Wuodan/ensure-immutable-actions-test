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
- nested local reusable workflow references that recurse again via `./...`

The mutable scenario should report the remote refs as mutable.

The immutable scenario should report the same remote refs as immutable because
they are pinned to the full commit SHA
`3aa32f4195cfe2c317e08bf59720997b7cecf3b7`.

The unsupported scenario should report `docker://alpine:3.20` as unsupported.

## Fixture Branch Maintenance

The fixtures repository can contain self-references pinned to full commit SHAs.
That is intentional and part of what this suite validates.

Because of that, fixture maintenance is not “edit once and done”:

- a fixture change may require a follow-up fixtures commit that updates one or
  more pinned self-references
- workflow expectations in this repository must match the committed fixture
  graph of the selected fixtures branch, not just its branch tip

Rule of thumb:

1. change fixture content in `ensure-immutable-actions-test-custom-actions`
2. if needed, add a follow-up commit that updates pinned self-SHAs there
3. update expected outputs in this repository to match the resulting fixture
   graph

## Snapshot Placeholders

Expected JSON in this repository does not hard-code literal fixture branch
names or fixture SHAs.

Instead it uses:

- `__FIXTURE_MUTABLE_REF__`
- `__FIXTURE_IMMUTABLE_REF__`

The workflow does two things:

- `scripts/render-fixtures.sh` rewrites the target workflows for the selected
  `fixtures_repository` and `fixtures_branch`
- `scripts/normalize-fixture-refs.sh` rewrites fixture refs in JSON before
  comparing actual and expected output

This keeps the snapshots stable when fixture branch names or SHAs change.
