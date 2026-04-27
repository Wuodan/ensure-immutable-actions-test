#!/usr/bin/env bash
set -euo pipefail

# Apply the selected fixtures repository and branch to the target workflows.
# For immutable top-level fixture refs, use the current tip SHA of that branch.
# Expected JSON keeps placeholders and is not resolved here.

if [[ -z "${FIXTURES_REPOSITORY:-}" ]]; then
  echo "FIXTURES_REPOSITORY is required, e.g. owner/ensure-immutable-actions-test-fixtures" >&2
  exit 1
fi

if [[ -z "${FIXTURES_BRANCH:-}" ]]; then
  echo "FIXTURES_BRANCH is required, e.g. baseline/upstream-99004139" >&2
  exit 1
fi

FIXTURES_OWNER="${FIXTURES_REPOSITORY%%/*}"
FIXTURES_REPO="${FIXTURES_REPOSITORY#*/}"
FIXTURES_URL="https://github.com/${FIXTURES_REPOSITORY}.git"
FIXTURES_SHA="$(git ls-remote --heads "$FIXTURES_URL" "$FIXTURES_BRANCH" | awk 'NR == 1 { print $1 }')"

if [[ -z "$FIXTURES_SHA" ]]; then
  echo "Failed to resolve branch tip for ${FIXTURES_REPOSITORY}@${FIXTURES_BRANCH}" >&2
  exit 1
fi

if [[ -n "${GITHUB_OUTPUT:-}" ]]; then
  {
    echo "repository=$FIXTURES_REPOSITORY"
    echo "owner=$FIXTURES_OWNER"
    echo "repo=$FIXTURES_REPO"
    echo "branch=$FIXTURES_BRANCH"
    echo "sha=$FIXTURES_SHA"
  } >> "$GITHUB_OUTPUT"
fi

workflow_files=(
  .github/workflows/targets-*.yml
)

expected_files=(
  expected/*.json
)

sed -E -i \
  -e "s|Wuodan/ensure-immutable-actions-test-fixtures|$FIXTURES_REPOSITORY|g" \
  "${workflow_files[@]}"

sed -E -i \
  -e "s|Wuodan/ensure-immutable-actions-test-fixtures|$FIXTURES_REPOSITORY|g" \
  -e "s|\"owner\": \"Wuodan\"|\"owner\": \"$FIXTURES_OWNER\"|g" \
  -e "s|\"repo\": \"ensure-immutable-actions-test-fixtures\"|\"repo\": \"$FIXTURES_REPO\"|g" \
  "${expected_files[@]}"

sed -E -i \
  -e "s|@baseline/upstream-99004139|@$FIXTURES_BRANCH|g" \
  -e "s|@__FIXTURES_BRANCH__|@$FIXTURES_BRANCH|g" \
  "${workflow_files[@]}"

sed -E -i \
  -e "s|(${FIXTURES_REPOSITORY//\//\\/}[^\"[:space:]@]+)@[0-9a-f]{40}|\\1@$FIXTURES_SHA|g" \
  -e "s|(${FIXTURES_REPOSITORY//\//\\/}[^\"[:space:]@]+)@__FIXTURES_SHA__|\\1@$FIXTURES_SHA|g" \
  "${workflow_files[@]}"
