#!/usr/bin/env bash

set -e

REPOSITORY="$(cut -d '/' -f 2 <<< "$GITHUB_ACTION_REPOSITORY")"

github_changelog_generator -u "$GITHUB_REPOSITORY_OWNER" -p "$REPOSITORY" --token "$INPUT_TOKEN" -o "$INPUT_OUPUT"
