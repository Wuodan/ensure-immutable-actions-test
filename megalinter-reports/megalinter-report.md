## ❌[MegaLinter](https://megalinter.io/beta) analysis: Error



| Descriptor  |                                               Linter                                               |Files|Fixed|Errors|Warnings|Elapsed time|
|-------------|----------------------------------------------------------------------------------------------------|----:|----:|-----:|-------:|-----------:|
|✅ ACTION    |[actionlint](https://megalinter.io/beta/descriptors/action_actionlint)                              |   11|     |     0|       0|       0.17s|
|❌ ACTION    |[zizmor](https://megalinter.io/beta/descriptors/action_zizmor)                                      |   11|    4|    65|       0|       2.16s|
|✅ BASH      |[bash-exec](https://megalinter.io/beta/descriptors/bash_bash_exec)                                  |    1|     |     0|       0|       0.16s|
|✅ BASH      |[shellcheck](https://megalinter.io/beta/descriptors/bash_shellcheck)                                |    1|     |     0|       0|       0.02s|
|✅ BASH      |[shfmt](https://megalinter.io/beta/descriptors/bash_shfmt)                                          |    1|    1|     0|       0|       0.01s|
|✅ COPYPASTE |[jscpd](https://megalinter.io/beta/descriptors/copypaste_jscpd)                                     |  yes|     |    no|      no|       0.21s|
|✅ JSON      |[jsonlint](https://megalinter.io/beta/descriptors/json_jsonlint)                                    |    9|     |     0|       0|       0.22s|
|✅ JSON      |[prettier](https://megalinter.io/beta/descriptors/json_prettier)                                    |    9|    7|     0|       0|       0.25s|
|✅ JSON      |[v8r](https://megalinter.io/beta/descriptors/json_v8r)                                              |    9|     |     0|       0|       1.32s|
|✅ MARKDOWN  |[markdownlint](https://megalinter.io/beta/descriptors/markdown_markdownlint)                        |    2|    0|     0|       0|       0.32s|
|✅ MARKDOWN  |[markdown-table-formatter](https://megalinter.io/beta/descriptors/markdown_markdown_table_formatter)|    2|    1|     0|       0|       0.15s|
|✅ REPOSITORY|[betterleaks](https://megalinter.io/beta/descriptors/repository_betterleaks)                        |  yes|     |    no|      no|       0.81s|
|✅ REPOSITORY|[checkov](https://megalinter.io/beta/descriptors/repository_checkov)                                |  yes|     |    no|      no|      11.57s|
|✅ REPOSITORY|[devskim](https://megalinter.io/beta/descriptors/repository_devskim)                                |  yes|     |    no|      no|       1.11s|
|✅ REPOSITORY|[dustilock](https://megalinter.io/beta/descriptors/repository_dustilock)                            |  yes|     |    no|      no|       0.16s|
|✅ REPOSITORY|[gitleaks](https://megalinter.io/beta/descriptors/repository_gitleaks)                              |  yes|     |    no|      no|       0.25s|
|✅ REPOSITORY|[git_diff](https://megalinter.io/beta/descriptors/repository_git_diff)                              |  yes|     |    no|      no|       0.13s|
|✅ REPOSITORY|[grype](https://megalinter.io/beta/descriptors/repository_grype)                                    |  yes|     |    no|      no|      32.64s|
|✅ REPOSITORY|[kingfisher](https://megalinter.io/beta/descriptors/repository_kingfisher)                          |  yes|     |    no|      no|       5.19s|
|✅ REPOSITORY|[osv-scanner](https://megalinter.io/beta/descriptors/repository_osv_scanner)                        |  yes|     |    no|      no|        0.2s|
|✅ REPOSITORY|[secretlint](https://megalinter.io/beta/descriptors/repository_secretlint)                          |  yes|     |    no|      no|        0.5s|
|✅ REPOSITORY|[syft](https://megalinter.io/beta/descriptors/repository_syft)                                      |  yes|     |    no|      no|        1.5s|
|✅ REPOSITORY|[trivy](https://megalinter.io/beta/descriptors/repository_trivy)                                    |  yes|     |    no|      no|       6.55s|
|✅ REPOSITORY|[trivy-sbom](https://megalinter.io/beta/descriptors/repository_trivy_sbom)                          |  yes|     |    no|      no|       0.22s|
|✅ REPOSITORY|[trufflehog](https://megalinter.io/beta/descriptors/repository_trufflehog)                          |  yes|     |    no|      no|       1.92s|
|❌ SPELL     |[cspell](https://megalinter.io/beta/descriptors/spell_cspell)                                       |   31|     |    58|       0|       2.73s|
|❌ SPELL     |[lychee](https://megalinter.io/beta/descriptors/spell_lychee)                                       |   27|     |     3|       0|        0.2s|
|✅ YAML      |[prettier](https://megalinter.io/beta/descriptors/yaml_prettier)                                    |   16|    4|     0|       0|       0.46s|
|✅ YAML      |[v8r](https://megalinter.io/beta/descriptors/yaml_v8r)                                              |   16|     |     0|       0|       2.99s|
|✅ YAML      |[yamllint](https://megalinter.io/beta/descriptors/yaml_yamllint)                                    |   16|     |     0|       0|       0.38s|

## Detailed Issues

<details>
<summary>❌ SPELL / cspell - 58 errors</summary>

```
.github/actions/close-pull-request/action.yml:34:18     - Unknown word (pipefail)   -- set -euo pipefail
	 Suggestions: [pipeful, pineal, pigtail, pintail, pitfall]
.github/workflows/ci_lint.yml:59:20     - Unknown word (pipefail)   -- set -euo pipefail
	 Suggestions: [pipeful, pineal, pigtail, pintail, pitfall]
.github/workflows/ci_lint.yml:82:15     - Unknown word (Wuodan)     -- uses: Wuodan/megalinter@beta
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
.github/workflows/targets-immutable.yml:13:15     - Unknown word (Wuodan)     -- - uses: Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
.github/workflows/targets-immutable.yml:16:11     - Unknown word (Wuodan)     -- uses: Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
.github/workflows/targets-local-reusable-workflow-immutable-child.yml:13:15     - Unknown word (Wuodan)     -- - uses: Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
.github/workflows/targets-local-reusable-workflow-mutable-child.yml:13:15     - Unknown word (Wuodan)     -- - uses: Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
.github/workflows/targets-mixed-first-party.yml:15:15     - Unknown word (Wuodan)     -- - uses: Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
.github/workflows/targets-mixed-first-party.yml:16:15     - Unknown word (Wuodan)     -- - uses: Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
.github/workflows/targets-mutable.yml:14:15     - Unknown word (Wuodan)     -- - uses: Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
.github/workflows/targets-mutable.yml:19:15     - Unknown word (Wuodan)     -- - uses: Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
.github/workflows/targets-mutable.yml:22:11     - Unknown word (Wuodan)     -- uses: Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
.github/workflows/targets-unsupported.yml:18:15     - Unknown word (Wuodan)     -- - uses: Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
.github/workflows/validate-refs.yml:9:19      - Unknown word (joshjohanning) -- default: "joshjohanning/ensure-immutable-actions
	 Suggestions: []
.github/workflows/validate-refs.yml:19:19     - Unknown word (Wuodan)        -- default: "Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
.github/workflows/validate-refs.yml:90:32     - Unknown word (immut)         -- workflows: targets-immut*.yml,targets-unsup*
	 Suggestions: [imit, imus, Imus, smut, mut]
.github/workflows/validate-refs.yml:90:51     - Unknown word (unsup)         -- targets-immut*.yml,targets-unsup*.yml
	 Suggestions: [unup, unUp, Unup, UnUp, unsw]
.github/workflows/validate-refs.yml:95:78     - Unknown word (unsup)         -- mutable.yml,targets-unsup*.yml,targets-first-party
	 Suggestions: [unup, unUp, Unup, UnUp, unsw]
.github/workflows/validate-refs.yml:136:20    - Unknown word (pipefail)      -- set -euo pipefail
	 Suggestions: [pipeful, pineal, pigtail, pintail, pitfall]
.github/workflows/validate-refs.yml:172:20    - Unknown word (pipefail)      -- set -euo pipefail
	 Suggestions: [pipeful, pineal, pigtail, pintail, pitfall]
.github/workflows/validate-refs.yml:213:20    - Unknown word (pipefail)      -- set -euo pipefail
	 Suggestions: [pipeful, pineal, pigtail, pintail, pitfall]
.github/workflows/validate-refs.yml:237:20    - Unknown word (pipefail)      -- set -euo pipefail
	 Suggestions: [pipeful, pineal, pigtail, pintail, pitfall]
.gitignore:14:2      - Unknown word (eslintcache) -- .eslintcache
	 Suggestions: []
.mega-linter.yml:1:8       - Unknown word (ZIZMOR)     -- ACTION_ZIZMOR_UNSECURED_ENV_VARIABLES
	 Suggestions: [ZIMMER, Zimmer, GIZMO, IZMIR, TIMOR]
expected/exclude-workflows-selection.json:32:26     - Unknown word (Wuodan)     -- "entrypointUses": "Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/exclude-workflows-selection.json:36:17     - Unknown word (Wuodan)     -- "owner": "Wuodan",
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/exclude-workflows-selection.json:43:16     - Unknown word (Wuodan)     -- "uses": "Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/exclude-workflows-selection.json:47:26     - Unknown word (Wuodan)     -- "entrypointUses": "Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/exclude-workflows-selection.json:51:17     - Unknown word (Wuodan)     -- "owner": "Wuodan",
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/targets-immutable.json:36:17     - Unknown word (Wuodan)     -- "owner": "Wuodan",
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/targets-immutable.json:43:16     - Unknown word (Wuodan)     -- "uses": "Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/targets-immutable.json:47:26     - Unknown word (Wuodan)     -- "entrypointUses": "Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/targets-immutable.json:51:17     - Unknown word (Wuodan)     -- "owner": "Wuodan",
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/targets-immutable.json:58:16     - Unknown word (Wuodan)     -- "uses": "Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/targets-mixed-first-party-include-first-party.json:34:26     - Unknown word (Wuodan)     -- "entrypointUses": "Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/targets-mixed-first-party-include-first-party.json:38:17     - Unknown word (Wuodan)     -- "owner": "Wuodan",
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/targets-mixed-first-party-include-first-party.json:45:16     - Unknown word (Wuodan)     -- "uses": "Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/targets-mixed-first-party-include-first-party.json:49:26     - Unknown word (Wuodan)     -- "entrypointUses": "Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/targets-mixed-first-party-include-first-party.json:53:17     - Unknown word (Wuodan)     -- "owner": "Wuodan",
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/targets-mutable.json:32:26     - Unknown word (Wuodan)     -- "entrypointUses": "Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/targets-mutable.json:36:17     - Unknown word (Wuodan)     -- "owner": "Wuodan",
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/targets-mutable.json:43:16     - Unknown word (Wuodan)     -- "uses": "Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/targets-mutable.json:53:17     - Unknown word (Wuodan)     -- "owner": "Wuodan",
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/targets-mutable.json:60:16     - Unknown word (Wuodan)     -- "uses": "Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/targets-unsupported.json:7:26      - Unknown word (Wuodan)     -- "entrypointUses": "Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/targets-unsupported.json:11:17     - Unknown word (Wuodan)     -- "owner": "Wuodan",
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/targets-unsupported.json:18:16     - Unknown word (Wuodan)     -- "uses": "Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/workflows-glob-selection.json:36:17     - Unknown word (Wuodan)     -- "owner": "Wuodan",
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/workflows-glob-selection.json:43:16     - Unknown word (Wuodan)     -- "uses": "Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/workflows-glob-selection.json:47:26     - Unknown word (Wuodan)     -- "entrypointUses": "Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/workflows-glob-selection.json:51:17     - Unknown word (Wuodan)     -- "owner": "Wuodan",
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
expected/workflows-glob-selection.json:58:16     - Unknown word (Wuodan)     -- "uses": "Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
README.md:4:2       - Unknown word (Wuodan)     -- `Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
README.md:8:98      - Unknown word (Wuodan)     -- reusable workflow from `Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
README.md:13:29     - Unknown word (Wuodan)     -- validate-refs.yml` runs `Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
scripts/render-fixtures.sh:48:8      - Unknown word (Wuodan)     -- -e "s|Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
scripts/render-fixtures.sh:52:8      - Unknown word (Wuodan)     -- -e "s|Wuodan/ensure-immutable-actions
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
scripts/render-fixtures.sh:53:21     - Unknown word (Wuodan)     -- -e "s|\"owner\": \"Wuodan\"|\"owner\": \"$FIXTURES
	 Suggestions: [houdan, Houdan, soudan, Soudan, Woden]
CSpell: Files checked: 31, Issues found: 58 in 19 files.


You can skip this misspellings by defining the following .cspell.json file at the root of your repository
Of course, please correct real typos before :)

{
    "version": "0.2",
    "language": "en",
    "ignorePaths": [
        "**/node_modules/**",
        "**/vscode-extension/**",
        "**/.git/**",
        "**/.pnpm-lock.json",
        ".vscode",
        "package-lock.json",
        "megalinter-reports"
    ],
    "words": [
        "Wuodan",
        "ZIZMOR",
        "eslintcache",
        "immut",
        "joshjohanning",
        "pipefail",
        "unsup"
    ]
}


You can also copy-paste megalinter-reports/.cspell.json at the root of your repository
```

</details>

<details>
<summary>❌ SPELL / lychee - 3 errors</summary>

```
📝 Summary
---------------------
🔍 Total............3
🔗 Unique...........1
✅ Successful.......0
⏳ Timeouts.........0
🔀 Redirected.......0
👻 Excluded.........0
❓ Unknown..........0
🚫 Errors...........3
⛔ Unsupported......3

Errors in .github/workflows/targets-unsupported.yml
[ERROR] error: (at 13:15) | Cannot parse 'docker://alpine:3.20' into a URL: invalid port number

Errors in expected/targets-unsupported.json
[ERROR] error: (at 34:16) | Cannot parse 'docker://alpine:3.20' into a URL: invalid port number

Errors in expected/workflows-glob-selection.json
[ERROR] error: (at 148:16) | Cannot parse 'docker://alpine:3.20' into a URL: invalid port number
```

</details>

<details>
<summary>❌ ACTION / zizmor - 65 errors</summary>

```
INFO zizmor: 🌈 zizmor v1.25.0
 INFO audit: zizmor: 🌈 completed .github/workflows/ci_lint.yml
 INFO audit: zizmor: 🌈 completed .github/workflows/targets-first-party.yml
 INFO audit: zizmor: 🌈 completed .github/workflows/targets-immutable.yml
 INFO audit: zizmor: 🌈 completed .github/workflows/targets-local-reusable-workflow-immutable-child.yml
 INFO audit: zizmor: 🌈 completed .github/workflows/targets-local-reusable-workflow-immutable-parent.yml
 INFO audit: zizmor: 🌈 completed .github/workflows/targets-local-reusable-workflow-mutable-child.yml
 INFO audit: zizmor: 🌈 completed .github/workflows/targets-local-reusable-workflow-mutable-parent.yml
 INFO audit: zizmor: 🌈 completed .github/workflows/targets-mixed-first-party.yml
 INFO audit: zizmor: 🌈 completed .github/workflows/targets-mutable.yml
 INFO audit: zizmor: 🌈 completed .github/workflows/targets-unsupported.yml
 INFO audit: zizmor: 🌈 completed .github/workflows/validate-refs.yml
help[artipacked]: credential persistence through GitHub Actions artifacts
  --> .github/workflows/ci_lint.yml:65:9
   |
65 |         - name: Checkout
   |  _________^
66 | |         uses: actions/checkout@HIDDEN_BY_MEGALINTER# v7.0.0
67 | |         with:
68 | |           token: ${{ secrets.PAT || github.token }}
69 | |           fetch-depth: 0
   | |________________________^ does not set persist-credentials: false
   |
   = note: audit confidence → Low
   = note: this finding has an auto-fix
   = help: audit documentation → https://docs.zizmor.sh/audits/#artipacked

error[unpinned-uses]: unpinned action reference
  --> .github/workflows/ci_lint.yml:82:15
   |
82 |         uses: Wuodan/megalinter@beta
   |               ^^^^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
   |
   = note: audit confidence → High
   = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

help[artipacked]: credential persistence through GitHub Actions artifacts
  --> .github/workflows/targets-first-party.yml:13:9
   |
13 |       - uses: actions/checkout@v7
   |         ^^^^^^^^^^^^^^^^^^^^^^^^^ does not set persist-credentials: false
   |
   = note: audit confidence → Low
   = note: this finding has an auto-fix
   = help: audit documentation → https://docs.zizmor.sh/audits/#artipacked

error[unpinned-uses]: unpinned action reference
  --> .github/workflows/targets-first-party.yml:13:15
   |
13 |       - uses: actions/checkout@v7
   |               ^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
   |
   = note: audit confidence → High
   = note: this finding has an auto-fix
   = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

error[unpinned-uses]: unpinned action reference
  --> .github/workflows/targets-first-party.yml:14:15
   |
14 |       - uses: actions/setup-node@v6
   |               ^^^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
   |
   = note: audit confidence → High
   = note: this finding has an auto-fix
   = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

error[unpinned-uses]: unpinned action reference
  --> .github/workflows/targets-immutable.yml:13:15
   |
13 |       - uses: Wuodan/ensure-immutable-actions-test-fixtures/composite-actions/parent@__FIXTURES_SHA__
   |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
   |
   = note: audit confidence → High
   = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

error[unpinned-uses]: unpinned action reference
  --> .github/workflows/targets-immutable.yml:16:11
   |
16 |     uses: Wuodan/ensure-immutable-actions-test-fixtures/.github/workflows/reusable.yml@__FIXTURES_SHA__
   |           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
   |
   = note: audit confidence → High
   = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

error[unpinned-uses]: unpinned action reference
  --> .github/workflows/targets-local-reusable-workflow-immutable-child.yml:13:15
   |
13 |       - uses: Wuodan/ensure-immutable-actions-test-fixtures/composite-actions/local-reusable-workflow-target@__FIXTURES_SHA__
   |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
   |
   = note: audit confidence → High
   = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

error[unpinned-uses]: unpinned action reference
  --> .github/workflows/targets-local-reusable-workflow-mutable-child.yml:13:15
   |
13 |       - uses: Wuodan/ensure-immutable-actions-test-fixtures/composite-actions/local-reusable-workflow-target@__FIXTURES_BRANCH__
   |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
   |
   = note: audit confidence → High
   = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

help[artipacked]: credential persistence through GitHub Actions artifacts
  --> .github/workflows/targets-mixed-first-party.yml:13:9
   |
13 |       - uses: actions/checkout@v7
   |         ^^^^^^^^^^^^^^^^^^^^^^^^^ does not set persist-credentials: false
   |
   = note: audit confidence → Low
   = note: this finding has an auto-fix
   = help: audit documentation → https://docs.zizmor.sh/audits/#artipacked

error[unpinned-uses]: unpinned action reference
  --> .github/workflows/targets-mixed-first-party.yml:13:15
   |
13 |       - uses: actions/checkout@v7
   |               ^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
   |
   = note: audit confidence → High
   = note: this finding has an auto-fix
   = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

error[unpinned-uses]: unpinned action reference
  --> .github/workflows/targets-mixed-first-party.yml:14:15
   |
14 |       - uses: actions/setup-node@v6
   |               ^^^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
   |
   = note: audit confidence → High
   = note: this finding has an auto-fix
   = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

error[unpinned-uses]: unpinned action reference
  --> .github/workflows/targets-mixed-first-party.yml:15:15
   |
15 |       - uses: Wuodan/ensure-immutable-actions-test-fixtures/composite-actions/parent@__FIXTURES_BRANCH__
   |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
   |
   = note: audit confidence → High
   = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

error[unpinned-uses]: unpinned action reference
  --> .github/workflows/targets-mixed-first-party.yml:16:15
   |
16 |       - uses: Wuodan/ensure-immutable-actions-test-fixtures/composite-actions/leaf@__FIXTURES_SHA__
   |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
   |
   = note: audit confidence → High
   = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

help[artipacked]: credential persistence through GitHub Actions artifacts
  --> .github/workflows/targets-mutable.yml:13:9
   |
13 |       - uses: actions/checkout@v7
   |         ^^^^^^^^^^^^^^^^^^^^^^^^^ does not set persist-credentials: false
   |
   = note: audit confidence → Low
   = note: this finding has an auto-fix
   = help: audit documentation → https://docs.zizmor.sh/audits/#artipacked

error[unpinned-uses]: unpinned action reference
  --> .github/workflows/targets-mutable.yml:13:15
   |
13 |       - uses: actions/checkout@v7
   |               ^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
   |
   = note: audit confidence → High
   = note: this finding has an auto-fix
   = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

error[unpinned-uses]: unpinned action reference
  --> .github/workflows/targets-mutable.yml:14:15
   |
14 |       - uses: Wuodan/ensure-immutable-actions-test-fixtures/composite-actions/parent@__FIXTURES_BRANCH__
   |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
   |
   = note: audit confidence → High
   = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

error[unpinned-uses]: unpinned action reference
  --> .github/workflows/targets-mutable.yml:19:15
   |
19 |       - uses: Wuodan/ensure-immutable-actions-test-fixtures/composite-actions/parent@__FIXTURES_BRANCH__
   |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
   |
   = note: audit confidence → High
   = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

error[unpinned-uses]: unpinned action reference
  --> .github/workflows/targets-mutable.yml:22:11
   |
22 |     uses: Wuodan/ensure-immutable-actions-test-fixtures/.github/workflows/reusable.yml@__FIXTURES_BRANCH__
   |           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
   |
   = note: audit confidence → High
   = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

error[unpinned-uses]: unpinned action reference
  --> .github/workflows/targets-unsupported.yml:18:15
   |
18 |       - uses: Wuodan/ensure-immutable-actions-test-fixtures/composite-actions/docker-unsupported@__FIXTURES_SHA__
   |               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
   |
   = note: audit confidence → High
   = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

help[artipacked]: credential persistence through GitHub Actions artifacts
  --> .github/workflows/validate-refs.yml:34:9
   |
34 |       - uses: actions/checkout@v7
   |         ^^^^^^^^^^^^^^^^^^^^^^^^^ does not set persist-credentials: false
   |
   = note: audit confidence → Low
   = note: this finding has an auto-fix
   = help: audit documentation → https://docs.zizmor.sh/audits/#artipacked

help[artipacked]: credential persistence through GitHub Actions artifacts
   --> .github/workflows/validate-refs.yml:116:9
    |
116 |       - uses: actions/checkout@v7
    |         ^^^^^^^^^^^^^^^^^^^^^^^^^ does not set persist-credentials: false
    |
    = note: audit confidence → Low
    = note: this finding has an auto-fix
    = help: audit documentation → https://docs.zizmor.sh/audits/#artipacked

help[artipacked]: credential persistence through GitHub Actions artifacts
   --> .github/workflows/validate-refs.yml:118:9
    |
118 |         - name: Checkout action under test
    |  _________^
119 | |         uses: actions/checkout@v7
120 | |         with:
121 | |           repository: ${{ inputs.repository }}
122 | |           ref: ${{ inputs.ref }}
123 | |           path: action
    | |______________________^ does not set persist-credentials: false
    |
    = note: audit confidence → Low
    = note: this finding has an auto-fix
    = help: audit documentation → https://docs.zizmor.sh/audits/#artipacked

help[artipacked]: credential persistence through GitHub Actions artifacts
   --> .github/workflows/validate-refs.yml:193:9
    |
193 |       - uses: actions/checkout@v7
    |         ^^^^^^^^^^^^^^^^^^^^^^^^^ does not set persist-credentials: false
    |
    = note: audit confidence → Low
    = note: this finding has an auto-fix
    = help: audit documentation → https://docs.zizmor.sh/audits/#artipacked

help[artipacked]: credential persistence through GitHub Actions artifacts
   --> .github/workflows/validate-refs.yml:195:9
    |
195 |         - name: Checkout action under test
    |  _________^
196 | |         uses: actions/checkout@v7
197 | |         with:
198 | |           repository: ${{ inputs.repository }}
199 | |           ref: ${{ inputs.ref }}
200 | |           path: action
    | |______________________^ does not set persist-credentials: false
    |
    = note: audit confidence → Low
    = note: this finding has an auto-fix
    = help: audit documentation → https://docs.zizmor.sh/audits/#artipacked

error[template-injection]: code injection via template expansion
  --> .github/workflows/validate-refs.yml:52:47
   |
46 |         run: |
   |         --- this run block
...
52 |             echo "| Action repository | \`${{ inputs.repository }}\` |"
   |                                               ^^^^^^^^^^^^^^^^^ may expand into attacker-controllable code
   |
   = note: audit confidence → High
   = note: this finding has an auto-fix
   = help: audit documentation → https://docs.zizmor.sh/audits/#template-injection

error[template-injection]: code injection via template expansion
  --> .github/workflows/validate-refs.yml:53:40
   |
46 |         run: |
   |         --- this run block
...
53 |             echo "| Action ref | \`${{ inputs.ref }}\` |"
   |                                        ^^^^^^^^^^ may expand into attacker-controllable code
   |
   = note: audit confidence → High
   = note: this finding has an auto-fix
   = help: audit documentation → https://docs.zizmor.sh/audits/#template-injection

error[template-injection]: code injection via template expansion
  --> .github/workflows/validate-refs.yml:55:41
   |
46 |         run: |
   |         --- this run block
...
55 |             echo "| Test branch | \`${{ github.ref_name }}\` |"
   |                                         ^^^^^^^^^^^^^^^ may expand into attacker-controllable code
   |
   = note: audit confidence → High
   = note: this finding has an auto-fix
   = help: audit documentation → https://docs.zizmor.sh/audits/#template-injection

info[template-injection]: code injection via template expansion
  --> .github/workflows/validate-refs.yml:56:49
   |
46 |         run: |
   |         --- this run block
...
56 |             echo "| Fixtures repository | \`${{ steps.fixtures.outputs.repository }}\` |"
   |                                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ may expand into attacker-controllable code
   |
   = note: audit confidence → Low
   = note: this finding has an auto-fix
   = help: audit documentation → https://docs.zizmor.sh/audits/#template-injection

info[template-injection]: code injection via template expansion
  --> .github/workflows/validate-refs.yml:57:45
   |
46 |         run: |
   |         --- this run block
...
57 |             echo "| Fixtures branch | \`${{ steps.fixtures.outputs.branch }}\` |"
   |                                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ may expand into attacker-controllable code
   |
   = note: audit confidence → Low
   = note: this finding has an auto-fix
   = help: audit documentation → https://docs.zizmor.sh/audits/#template-injection

info[template-injection]: code injection via template expansion
  --> .github/workflows/validate-refs.yml:58:42
   |
46 |         run: |
   |         --- this run block
...
58 |             echo "| Fixtures SHA | \`${{ steps.fixtures.outputs.sha }}\` |"
   |                                          ^^^^^^^^^^^^^^^^^^^^^^^^^^ may expand into attacker-controllable code
   |
   = note: audit confidence → Low
   = note: this finding has an auto-fix
   = help: audit documentation → https://docs.zizmor.sh/audits/#template-injection

info[template-injection]: code injection via template expansion
   --> .github/workflows/validate-refs.yml:238:21
    |
236 |         run: |
    |         --- this run block
237 |           set -euo pipefail
238 |           test "${{ steps.scan.outcome }}" = "failure"
    |                     ^^^^^^^^^^^^^^^^^^ may expand into attacker-controllable code
    |
    = note: audit confidence → Low
    = note: this finding has an auto-fix
    = help: audit documentation → https://docs.zizmor.sh/audits/#template-injection

error[unpinned-uses]: unpinned action reference
  --> .github/workflows/validate-refs.yml:34:15
   |
34 |       - uses: actions/checkout@v7
   |               ^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
   |
   = note: audit confidence → High
   = note: this finding has an auto-fix
   = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

error[unpinned-uses]: unpinned action reference
   --> .github/workflows/validate-refs.yml:116:15
    |
116 |       - uses: actions/checkout@v7
    |               ^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
    |
    = note: audit confidence → High
    = note: this finding has an auto-fix
    = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

error[unpinned-uses]: unpinned action reference
   --> .github/workflows/validate-refs.yml:119:15
    |
119 |         uses: actions/checkout@v7
    |               ^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
    |
    = note: audit confidence → High
    = note: this finding has an auto-fix
    = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

error[unpinned-uses]: unpinned action reference
   --> .github/workflows/validate-refs.yml:126:15
    |
126 |         uses: actions/setup-node@v6
    |               ^^^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
    |
    = note: audit confidence → High
    = note: this finding has an auto-fix
    = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

error[unpinned-uses]: unpinned action reference
   --> .github/workflows/validate-refs.yml:193:15
    |
193 |       - uses: actions/checkout@v7
    |               ^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
    |
    = note: audit confidence → High
    = note: this finding has an auto-fix
    = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

error[unpinned-uses]: unpinned action reference
   --> .github/workflows/validate-refs.yml:196:15
    |
196 |         uses: actions/checkout@v7
    |               ^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
    |
    = note: audit confidence → High
    = note: this finding has an auto-fix
    = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

error[unpinned-uses]: unpinned action reference
   --> .github/workflows/validate-refs.yml:203:15
    |
203 |         uses: actions/setup-node@v6
    |               ^^^^^^^^^^^^^^^^^^^^^ action is not pinned to a hash (required by blanket policy)
    |
    = note: audit confidence → High
    = note: this finding has an auto-fix
    = help: audit documentation → https://docs.zizmor.sh/audits/#unpinned-uses

65 findings (26 suppressed, 28 unsafe fixes): 4 informational, 9 low, 0 medium, 26 high
No fixes available to apply (28 held back by safe mode). Use --fix=unsafe or --fix=all to apply unsafe fixes.
```

</details>


### Notices

📣 **MegaLinter 9.5.0 is out!** Discover the new features and security recommendations in the [release announcement](https://github.com/oxsecurity/megalinter/issues/7835). (Skip this info by defining `SECURITY_SUGGESTIONS: false`)

See detailed reports in MegaLinter artifacts


Your project could benefit from a custom flavor, which would allow you to run only the linters you need, and thus improve runtime performances. (Skip this info by defining `FLAVOR_SUGGESTIONS: false`)

  - Documentation: [Custom Flavors](https://megalinter.io/beta/custom-flavors/)
  - Command: `npx mega-linter-runner@beta --custom-flavor-setup --custom-flavor-linters ACTION_ACTIONLINT,ACTION_ZIZMOR,BASH_EXEC,BASH_SHELLCHECK,BASH_SHFMT,COPYPASTE_JSCPD,JSON_JSONLINT,JSON_V8R,JSON_PRETTIER,MARKDOWN_MARKDOWNLINT,MARKDOWN_MARKDOWN_TABLE_FORMATTER,REPOSITORY_CHECKOV,REPOSITORY_DEVSKIM,REPOSITORY_DUSTILOCK,REPOSITORY_GIT_DIFF,REPOSITORY_GITLEAKS,REPOSITORY_BETTERLEAKS,REPOSITORY_GRYPE,REPOSITORY_OSV_SCANNER,REPOSITORY_SECRETLINT,REPOSITORY_SYFT,REPOSITORY_TRIVY,REPOSITORY_TRIVY_SBOM,REPOSITORY_TRUFFLEHOG,REPOSITORY_KINGFISHER,SPELL_CSPELL,SPELL_LYCHEE,YAML_PRETTIER,YAML_YAMLLINT,YAML_V8R`

[![MegaLinter is graciously provided by OX Security](https://raw.githubusercontent.com/oxsecurity/megalinter/main/docs/assets/images/ox-banner.png)](https://www.ox.security/?ref=megalinter)
Show us your support by [**starring ⭐ the repository**](https://github.com/oxsecurity/megalinter)