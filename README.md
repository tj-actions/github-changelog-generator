[github-changelog-generator](https://github.com/github-changelog-generator/github-changelog-generator)
----------------------------

Github CHANGELOG generator

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: Generate CHANGELOG
        uses: tj-actions/github-changelog-generator@v1.3
        with:
          output: 'HISTORY.md'
```


## Inputs

|   Input       |    type    |  required     |  default                      |  description  |
|:-------------:|:-----------:|:-------------:|:----------------------------:|:-------------:|
| token         |  `string`   |    `true`    | `${{ github.token }}` | [GITHUB_TOKEN](https://docs.github.com/en/free-pro-team@latest/actions/reference/authentication-in-a-workflow#using-the-github_token-in-a-workflow) <br /> or a repo scoped <br /> [Personal Access Token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token)              |
| output        |  `string`   |  `false`     | `CHANGELOG.md`        | The Changelog output file. |



* Free software: [MIT license](LICENSE)


Features
--------

* Generates Change logs using [github-changelog-generator](github-changelog-generator/github-changelog-generator)


Credits
-------

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter).



Report Bugs
-----------

Report bugs at https://github.com/tj-actions/github-changelog-generator/issues.

If you are reporting a bug, please include:

* Your operating system name and version.
* Any details about your workflow that might be helpful in troubleshooting.
* Detailed steps to reproduce the bug.
