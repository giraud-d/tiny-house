#!/bin/bash

# If no change equal 0
if [[ $(git diff HEAD content/CHANGELOG.md | wc -c) -gt 0 ]]; then
  # execute build
  ./build-asciidoc-file.sh
  # add export result to commit
  git add output
fi
