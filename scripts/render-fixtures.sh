#!/usr/bin/env bash
set -euo pipefail

if [[ -z "${FIXTURES_REPOSITORY:-}" ]]; then
  echo "FIXTURES_REPOSITORY is required, e.g. owner/ensure-immutable-actions-test-custom-actions" >&2
  exit 1
fi

FIXTURES_OWNER="${FIXTURES_REPOSITORY%%/*}"
FIXTURES_REPO="${FIXTURES_REPOSITORY#*/}"

if [[ -n "${GITHUB_OUTPUT:-}" ]]; then
  {
    echo "repository=$FIXTURES_REPOSITORY"
    echo "owner=$FIXTURES_OWNER"
    echo "repo=$FIXTURES_REPO"
  } >> "$GITHUB_OUTPUT"
fi

mkdir -p .github/actions
cp testdata/workflows/*.yml .github/workflows/
cp -R testdata/actions/. .github/actions/

for path in .github/workflows/targets-*.yml .github/actions/*/action.yml testdata/expected/*.json; do
  sed -i \
    -e "s|__FIXTURES_REPOSITORY__|$FIXTURES_REPOSITORY|g" \
    -e "s|__FIXTURES_OWNER__|$FIXTURES_OWNER|g" \
    -e "s|__FIXTURES_REPO__|$FIXTURES_REPO|g" \
    "$path"
done
