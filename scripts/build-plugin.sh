#!/usr/bin/env bash
# Rebuild dist/christian-song-prompt-builder.plugin from the current skill files.
# Usage: bash scripts/build-plugin.sh
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p dist
rm -f dist/christian-song-prompt-builder.plugin
zip -q -r dist/christian-song-prompt-builder.plugin \
  .claude-plugin/plugin.json skills README.md CHANGELOG.md \
  -x "*.DS_Store"
echo "Built dist/christian-song-prompt-builder.plugin"
