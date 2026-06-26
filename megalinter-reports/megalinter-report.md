## ❌[MegaLinter](https://megalinter.io/beta) analysis: Error



| Descriptor  |                                               Linter                                               |Files|Fixed|Errors|Warnings|Elapsed time|
|-------------|----------------------------------------------------------------------------------------------------|----:|----:|-----:|-------:|-----------:|
|✅ ACTION    |[actionlint](https://megalinter.io/beta/descriptors/action_actionlint)                              |   11|     |     0|       0|       0.17s|
|✅ ACTION    |[zizmor](https://megalinter.io/beta/descriptors/action_zizmor)                                      |   11|    4|     0|       0|       1.95s|
|✅ BASH      |[bash-exec](https://megalinter.io/beta/descriptors/bash_bash_exec)                                  |    1|     |     0|       0|       0.14s|
|✅ BASH      |[shellcheck](https://megalinter.io/beta/descriptors/bash_shellcheck)                                |    1|     |     0|       0|       0.02s|
|✅ BASH      |[shfmt](https://megalinter.io/beta/descriptors/bash_shfmt)                                          |    1|    1|     0|       0|       0.02s|
|✅ COPYPASTE |[jscpd](https://megalinter.io/beta/descriptors/copypaste_jscpd)                                     |  yes|     |    no|      no|        0.2s|
|✅ JSON      |[jsonlint](https://megalinter.io/beta/descriptors/json_jsonlint)                                    |   10|     |     0|       0|        0.2s|
|✅ JSON      |[prettier](https://megalinter.io/beta/descriptors/json_prettier)                                    |   10|    0|     0|       0|       0.18s|
|✅ JSON      |[v8r](https://megalinter.io/beta/descriptors/json_v8r)                                              |   10|     |     0|       0|       1.46s|
|✅ MARKDOWN  |[markdownlint](https://megalinter.io/beta/descriptors/markdown_markdownlint)                        |    2|    0|     0|       0|       0.31s|
|✅ MARKDOWN  |[markdown-table-formatter](https://megalinter.io/beta/descriptors/markdown_markdown_table_formatter)|    2|    1|     0|       0|       0.15s|
|✅ REPOSITORY|[betterleaks](https://megalinter.io/beta/descriptors/repository_betterleaks)                        |  yes|     |    no|      no|       0.79s|
|✅ REPOSITORY|[checkov](https://megalinter.io/beta/descriptors/repository_checkov)                                |  yes|     |    no|      no|      10.61s|
|✅ REPOSITORY|[devskim](https://megalinter.io/beta/descriptors/repository_devskim)                                |  yes|     |    no|      no|       1.28s|
|✅ REPOSITORY|[dustilock](https://megalinter.io/beta/descriptors/repository_dustilock)                            |  yes|     |    no|      no|       0.16s|
|✅ REPOSITORY|[gitleaks](https://megalinter.io/beta/descriptors/repository_gitleaks)                              |  yes|     |    no|      no|       0.36s|
|✅ REPOSITORY|[git_diff](https://megalinter.io/beta/descriptors/repository_git_diff)                              |  yes|     |    no|      no|       0.14s|
|✅ REPOSITORY|[grype](https://megalinter.io/beta/descriptors/repository_grype)                                    |  yes|     |    no|      no|      31.86s|
|✅ REPOSITORY|[kingfisher](https://megalinter.io/beta/descriptors/repository_kingfisher)                          |  yes|     |    no|      no|       4.81s|
|✅ REPOSITORY|[osv-scanner](https://megalinter.io/beta/descriptors/repository_osv_scanner)                        |  yes|     |    no|      no|        0.2s|
|✅ REPOSITORY|[secretlint](https://megalinter.io/beta/descriptors/repository_secretlint)                          |  yes|     |    no|      no|       0.67s|
|✅ REPOSITORY|[syft](https://megalinter.io/beta/descriptors/repository_syft)                                      |  yes|     |    no|      no|       1.37s|
|✅ REPOSITORY|[trivy](https://megalinter.io/beta/descriptors/repository_trivy)                                    |  yes|     |    no|      no|       6.97s|
|✅ REPOSITORY|[trivy-sbom](https://megalinter.io/beta/descriptors/repository_trivy_sbom)                          |  yes|     |    no|      no|       0.25s|
|✅ REPOSITORY|[trufflehog](https://megalinter.io/beta/descriptors/repository_trufflehog)                          |  yes|     |    no|      no|        1.8s|
|✅ SPELL     |[cspell](https://megalinter.io/beta/descriptors/spell_cspell)                                       |   33|     |     0|       0|       1.53s|
|✅ SPELL     |[lychee](https://megalinter.io/beta/descriptors/spell_lychee)                                       |   29|     |     0|       0|       0.61s|
|✅ YAML      |[prettier](https://megalinter.io/beta/descriptors/yaml_prettier)                                    |   17|    4|     0|       0|       0.33s|
|❌ YAML      |[v8r](https://megalinter.io/beta/descriptors/yaml_v8r)                                              |   17|     |     1|       0|       2.95s|
|✅ YAML      |[yamllint](https://megalinter.io/beta/descriptors/yaml_yamllint)                                    |   17|     |     0|       0|       0.33s|

## Detailed Issues

<details>
<summary>❌ YAML / v8r - 1 error</summary>

```
✖ .github/actions/local-from-workflow/action.yml is invalid

.github/actions/local-from-workflow/action.yml# must have required property 'description'
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