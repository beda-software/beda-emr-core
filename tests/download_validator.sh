#!/usr/bin/env bash
set -euo pipefail

DEST="$(dirname "$0")/../validator_cli.jar"

if [ -f "$DEST" ]; then
  echo "validator_cli.jar already exists at $DEST"
  exit 0
fi

echo "Downloading HAPI FHIR validator..."
curl -L -o "$DEST" \
  https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar
echo "Downloaded to $DEST"
