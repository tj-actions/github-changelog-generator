#!/usr/bin/env bash

set -e

REPOSITORY=$(cut -d '/' -f 2 <<< "$GITHUB_REPOSITORY")

echo "Running github_changelog_generator with the following settings:"
echo "Repository: $REPOSITORY"
echo "Repository owner: $GITHUB_REPOSITORY_OWNER"
echo "Output: $1"

github_changelog_generator -u "$GITHUB_REPOSITORY_OWNER" -p "$REPOSITORY" -t "$0" --base="$1" --output="$1"
