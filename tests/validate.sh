#!/usr/bin/env bash
set -euo pipefail

VALIDATOR="$(dirname "$0")/../validator_cli.jar"
IG="$(dirname "$0")/../fsh-generated/resources"
PROFILE="https://emr-core.beda.software/StructureDefinition/fhir-emr-questionnaire"
VERSION="4.0.1"
DIR="$(dirname "$0")"

PASS=0
FAIL=0

echo "Running validator (packages load once)..."

FULL_OUTPUT=$(java -jar "$VALIDATOR" \
  "$DIR/mapper-invalid-language.json" \
  "$DIR/mapper-invalid-reference.json" \
  "$DIR/mapper-invalid-no-expression.json" \
  "$DIR/mapper-valid-expression.json" \
  "$DIR/mapper-valid-reference.json" \
  -ig "$IG" -version "$VERSION" -profile "$PROFILE" 2>&1) || true

# Extract the Nth result block (split on *FAILURE*/*SUCCESS* lines)
section() {
  local n="$1"
  echo "$FULL_OUTPUT" | awk "
    /^\*(FAILURE|SUCCESS)\*/ { block++; in_block=1; next }
    in_block && block == $n { print }
    block > $n { exit }
  "
}

expect_error() {
  local section="$1" pattern="$2" label="$3"
  if echo "$section" | grep -q "$pattern"; then
    echo "  PASS [$label]"
    PASS=$((PASS + 1))
  else
    echo "  FAIL [$label] — pattern not found: $pattern"
    FAIL=$((FAIL + 1))
  fi
}

expect_no_error() {
  local section="$1" pattern="$2" label="$3"
  if echo "$section" | grep -qE "$pattern"; then
    echo "  FAIL [$label] — unexpected error found"
    FAIL=$((FAIL + 1))
  else
    echo "  PASS [$label]"
    PASS=$((PASS + 1))
  fi
}

echo "=== mapper-invalid-language.json ==="
S=$(section 1)
expect_error   "$S" "questionnaire-mapper-3" "invariant: language must be fpml or jute"
expect_error   "$S" "mapper-language-vs"      "profile MapperExpression: language binding"

echo "=== mapper-invalid-reference.json ==="
S=$(section 2)
expect_error   "$S" "questionnaire-mapper-2" "invariant: reference must be absent"
expect_error   "$S" "mapper-expression"       "profile MapperExpression: reference 0..0"

echo "=== mapper-invalid-no-expression.json ==="
S=$(section 3)
expect_error   "$S" "questionnaire-mapper-1" "invariant: expression is required"
expect_error   "$S" "mapper-expression"       "profile MapperExpression: expression 1..1"

echo "=== mapper-valid-expression.json ==="
S=$(section 4)
expect_no_error "$S" "questionnaire-mapper"                        "no invariant errors"
expect_no_error "$S" "mapper-expression.*(max|minimum)"            "no profile cardinality errors"

echo "=== mapper-valid-reference.json ==="
S=$(section 5)
expect_no_error "$S" "questionnaire-mapper"                        "no invariant errors"
expect_no_error "$S" "mapper-expression.*(max|minimum)"            "no profile cardinality errors"

echo ""
echo "Results: $PASS passed, $FAIL failed"
[ "$FAIL" -eq 0 ]
