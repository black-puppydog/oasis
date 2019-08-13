#!/usr/bin/env sh

# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

standard
dependency-check ./package.json --unused --no-dev --ignore-module highlight.js
cspell --no-summary "**/*.{js,md}"
