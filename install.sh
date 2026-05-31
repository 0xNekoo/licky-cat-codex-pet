#!/usr/bin/env bash
set -euo pipefail

PET_ID="licky-cat"
REPO_RAW_URL="https://raw.githubusercontent.com/0xNekoo/licky-cat-codex-pet/main"
CODEX_PETS_HOME="${CODEX_HOME:-$HOME/.codex}"
PET_DIR="$CODEX_PETS_HOME/pets/$PET_ID"

if ! command -v curl >/dev/null 2>&1; then
  echo "Error: curl is required to install Licky Cat." >&2
  exit 1
fi

mkdir -p "$PET_DIR"

curl -fsSL "$REPO_RAW_URL/pet.json" -o "$PET_DIR/pet.json"
curl -fsSL "$REPO_RAW_URL/spritesheet.webp" -o "$PET_DIR/spritesheet.webp"

echo "Licky Cat installed to: $PET_DIR"
echo "Restart Codex, then choose '舔舔猫' from the custom pet list."
