#!/usr/bin/env bash
# Rebuild dist/christian-song-prompt-builder.plugin from the current skill files.
# Usage: bash scripts/build-plugin.sh
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p dist
rm -f dist/christian-song-prompt-builder.plugin
if command -v zip >/dev/null 2>&1; then
  zip -q -r dist/christian-song-prompt-builder.plugin \
    .claude-plugin/plugin.json skills README.md CHANGELOG.md \
    -x "*.DS_Store"
else
  # No zip binary (e.g. Git Bash on Windows): build the same archive with Python.
  # Pick the first interpreter that actually runs (python3 can be a Store stub on Windows).
  PY=""
  for c in python3 python py; do
    if "$c" -c "import sys" >/dev/null 2>&1; then PY=$c; break; fi
  done
  [ -n "$PY" ] || { echo "Need zip or Python to build the plugin" >&2; exit 1; }
  "$PY" - <<'EOF'
import os, zipfile
with zipfile.ZipFile("dist/christian-song-prompt-builder.plugin", "w", zipfile.ZIP_DEFLATED) as z:
    for top in [".claude-plugin/plugin.json", "skills", "README.md", "CHANGELOG.md"]:
        if os.path.isfile(top):
            z.write(top)
            continue
        for root, dirs, files in os.walk(top):
            dirs.sort()
            for f in sorted(files):
                if f != ".DS_Store":
                    z.write(os.path.join(root, f).replace(os.sep, "/"))
EOF
fi
echo "Built dist/christian-song-prompt-builder.plugin"
