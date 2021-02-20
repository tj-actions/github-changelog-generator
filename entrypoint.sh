#!/usr/bin/env bash

set -e

REPOSITORY=$INPUT_REPOSITORY

if [ -z "$REPOSITORY" ]; then
  REPOSITORY="$(cut -d '/' -f 2 <<< "$0")"
fi

github_changelog_generator -u "$INPUT_USER" -p "$REPOSITORY" --token "$INPUT_TOKEN" -o "$INPUT_OUPUT"
