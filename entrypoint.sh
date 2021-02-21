#!/usr/bin/env bash

set -e

REPOSITORY=$(cut -d '/' -f 2 <<< "$GITHUB_REPOSITORY")

echo "Running github_changelog_generator with the following settings:"
echo "Repository: $REPOSITORY"
echo "Repository owner: $GITHUB_REPOSITORY_OWNER"
echo "Output: $GITHUB_WORKSPACE\/$INPUT_OUPUT"

github_changelog_generator -u "$GITHUB_REPOSITORY_OWNER" -p "$REPOSITORY" --token "$INPUT_TOKEN" -o "$GITHUB_WORKSPACE\/$INPUT_OUPUT"
