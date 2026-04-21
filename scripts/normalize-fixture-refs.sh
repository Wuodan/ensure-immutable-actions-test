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

if [[ -z "${FIXTURES_REPO:-}" ]]; then
  echo "FIXTURES_REPO is required" >&2
  exit 1
fi

input_file="$1"
tmp_file="$(mktemp)"
trap 'rm -f "$tmp_file"' EXIT

jq -S . "$input_file" > "$tmp_file"
mapfile -t lines < "$tmp_file"

uses_pattern="^([[:space:]]*\\\"(uses|entrypointUses)\\\":[[:space:]]*\\\")(${FIXTURES_REPOSITORY}[^@\\\"]*@)([^\\\"]+)(\\\".*)$"
ref_pattern='^([[:space:]]*"ref":[[:space:]]*")([^"]+)(".*)$'

fixture_placeholder() {
  local ref="$1"
  if [[ "$ref" == "__FIXTURE_IMMUTABLE_REF__" || "$ref" == "__FIXTURE_MUTABLE_REF__" ]]; then
    printf '%s\n' "$ref"
  elif [[ "$ref" =~ ^[A-Fa-f0-9]{40}$ ]]; then
    printf '__FIXTURE_IMMUTABLE_REF__\n'
  else
    printf '__FIXTURE_MUTABLE_REF__\n'
  fi
}

for i in "${!lines[@]}"; do
  line="${lines[$i]}"

  if [[ "$line" =~ $uses_pattern ]]; then
    prefix="${BASH_REMATCH[1]}${BASH_REMATCH[3]}"
    ref="${BASH_REMATCH[4]}"
    suffix="${BASH_REMATCH[5]}"
    placeholder="$(fixture_placeholder "$ref")"
    lines[$i]="${prefix}${placeholder}${suffix}"
    continue
  fi

  if [[ "$line" =~ $ref_pattern ]]; then
    if (( i + 2 < ${#lines[@]} )) && [[ "${lines[$((i + 2))]}" == *"\"repo\": \"$FIXTURES_REPO\""* ]]; then
      prefix="${BASH_REMATCH[1]}"
      ref="${BASH_REMATCH[2]}"
      suffix="${BASH_REMATCH[3]}"
      placeholder="$(fixture_placeholder "$ref")"
      lines[$i]="${prefix}${placeholder}${suffix}"
    fi
  fi
done

printf '%s\n' "${lines[@]}"
