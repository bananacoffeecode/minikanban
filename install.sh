#!/bin/bash
# Installs the latest Minikanban release: downloads it, clears the macOS quarantine flag,
# moves it into Applications, and opens it.
set -euo pipefail

REPO="bananacoffeecode/minikanban"
APP="Minikanban.app"
URL="https://github.com/$REPO/releases/latest/download/Minikanban.zip"

if [ -w /Applications ]; then DEST="/Applications"; else DEST="$HOME/Applications"; mkdir -p "$DEST"; fi

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "Downloading Minikanban…"
curl -fsSL "$URL" -o "$TMP/Minikanban.zip"
ditto -x -k "$TMP/Minikanban.zip" "$TMP"

pkill -f "$APP/Contents/MacOS" 2>/dev/null || true
rm -rf "$DEST/$APP"
mv "$TMP/$APP" "$DEST/"
xattr -dr com.apple.quarantine "$DEST/$APP" 2>/dev/null || true

echo "Installed to $DEST/$APP"
open "$DEST/$APP"
