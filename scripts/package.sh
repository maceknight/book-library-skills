#!/usr/bin/env bash
# skills/ 以下の各Skillを dist/<name>.skill（zip）にまとめる。claude.ai の「スキル」画面からアップロードできる。
set -euo pipefail
cd "$(dirname "$0")/.."
rm -rf dist && mkdir -p dist
for d in skills/*/; do
  name=$(basename "$d")
  (cd skills && zip -qr "../dist/$name.skill" "$name" -x '*.DS_Store')
  echo "dist/$name.skill"
done
