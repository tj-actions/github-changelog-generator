[![CI](https://github.com/tj-actions/github-changelog-generator/actions/workflows/test.yml/badge.svg)](https://github.com/tj-actions/github-changelog-generator/actions/workflows/test.yml) [![Update release version.](https://github.com/tj-actions/github-changelog-generator/actions/workflows/sync-release-version.yml/badge.svg)](https://github.com/tj-actions/github-changelog-generator/actions/workflows/sync-release-version.yml) [![Public workflows that use this action.](https://img.shields.io/endpoint?url=https%3A%2F%2Fapi-tj-actions1.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fgithub-changelog-generator%26badge%3Dtrue)](https://github.com/search?o=desc\&q=tj-actions+github-changelog-generator+path%3A.github%2Fworkflows+language%3AYAML\&s=\&type=Code)

## github-changelog-generator

Genrate github CHANGELOG's using [github-changelog-generator](https://github.com/github-changelog-generator/github-changelog-generator)

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: Generate CHANGELOG
        uses: tj-actions/github-changelog-generator@v1.8
        with:
          output: 'HISTORY.md'
```

## Inputs

|   Input       |    type    |  required     |  default                      |  description  |
|:-------------:|:-----------:|:-------------:|:----------------------------:|:-------------:|
| token         |  `string`   |    `true`    | `${{ github.token }}` | [GITHUB_TOKEN](https://docs.github.com/en/free-pro-team@latest/actions/reference/authentication-in-a-workflow#using-the-github_token-in-a-workflow) <br /> or a repo scoped <br /> [Personal Access Token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token)              |
| output        |  `string`   |  `false`     | `CHANGELOG.md`        | The Changelog output file. |

*   Free software: [MIT license](LICENSE)

If you feel generous and want to show some extra appreciation:

[![Buy me a coffee][buymeacoffee-shield]][buymeacoffee]

[buymeacoffee]: https://www.buymeacoffee.com/jackton1

[buymeacoffee-shield]: https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png

## Features

*   Generates `CHANGELOG.md` using [github-changelog-generator](github-changelog-generator/github-changelog-generator)

## Credits

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter).

## Report Bugs

Report bugs at https://github.com/tj-actions/github-changelog-generator/issues.

If you are reporting a bug, please include:

*   Your operating system name and version.
*   Any details about your workflow that might be helpful in troubleshooting.
*   Detailed steps to reproduce the bug.
