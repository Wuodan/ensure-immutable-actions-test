# Close Pull Request

Close an open GitHub pull request identified by:

- repository
- PR branch
- base branch

Optionally, restrict the match with a regular expression on the PR title.

If no matching open pull request is found, the action exits successfully without logging noise.

## What It Does

The action:

1. Lists open pull requests for the given `repository`, `pr_branch`, and `base_branch`
2. Optionally filters them by `title_regex`
3. Closes the first matching pull request
4. Deletes the PR branch with `gh pr close --delete-branch`
5. Logs the closed PR number and title

This is useful for cleanup flows where another step may or may not have created or updated a pull request, and a later run should remove the stale PR if it is no longer needed.

## Inputs

| Name            | Required | Description                                         | Default             |
|-----------------|----------|-----------------------------------------------------|---------------------|
| `github_token`  | Yes      | GitHub token used by the GitHub CLI                 |                     |
| `repository`    | Yes      | Repository in `owner/name` format                   |                     |
| `pr_branch`     | Yes      | Branch name used by the pull request                |                     |
| `base_branch`   | Yes      | Base branch name of the pull request                |                     |
| `title_regex`   | No       | Optional regular expression the PR title must match | `""`                |
| `close_comment` | No       | Comment posted when closing the pull request        | `Closing stale PR.` |

## Behavior

- If no open PR matches `pr_branch` and `base_branch`, the action exits successfully.
- If `title_regex` is set, only PRs whose title matches the regex are eligible.
- If multiple PRs match, the first match returned by `gh pr list` is closed.

## Requirements

- `gh` must be available on the runner
- `jq` must be available on the runner
- the token must be allowed to read and close pull requests

Typical workflow permissions:

```yaml
permissions:
  contents: write
  pull-requests: write
```

## Example

```yaml
name: Cleanup stale linter PR

on:
  workflow_dispatch:

permissions:
  contents: write
  pull-requests: write

jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      
      # Linter steps
      
      # Create PR if linter changed repo
        
      - name: Close stale PR
        if: <linter did not change repo condition>
        uses: <owner>/<repo>@v1
        with:
          github_token: ${{ github.token }}
          repository: ${{ github.repository }}
          pr_branch: autofix/${{ github.ref_name }}
          base_branch: ${{ github.ref_name }}
          title_regex: '^Apply lint autofixes'
          close_comment: Closing stale linter PR.
```

## Local Action Example

```yaml
- name: Close stale PR
  uses: ./.github/actions/close-pull-request
  with:
    github_token: ${{ github.token }}
    repository: ${{ github.repository }}
    pr_branch: autofix/${{ github.ref_name }}
    base_branch: ${{ github.ref_name }}
```

## Notes

- This action only closes pull requests. It does not create or update them.
- The title regex is intended as an extra safety guard, not the primary selector.
- Matching by PR branch and base branch keeps the action generic and reusable across workflows.
