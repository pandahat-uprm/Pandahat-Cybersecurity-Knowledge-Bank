#!/usr/bin/env bash
# Builds docs/index.md (the website home page) from README.md,
# so README.md is the single source of truth. Never edit docs/index.md.
set -euo pipefail
cd "$(dirname "$0")/.."
{
  echo "<!-- AUTO-GENERATED from README.md by scripts/sync-index.sh. Edit README.md instead. -->"
  sed -e 's#](docs/#](#g' README.md
} > docs/index.md
echo "docs/index.md updated from README.md"
