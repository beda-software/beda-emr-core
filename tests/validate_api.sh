#!/usr/bin/env sh
set -eu

FHIR_BASE="${FHIR_BASE:-http://localhost:8080/fhir}"
PROFILE="${PROFILE:-https://emr-core.beda.software/StructureDefinition/fhir-emr-questionnaire}"

PASS=0
FAIL=0

validate_resource() {
  curl -sf -X POST "$FHIR_BASE/Questionnaire/\$validate?profile=$PROFILE" \
    -H "Content-Type: application/fhir+json" \
    -d "@$1"
}

expect_error() {
  local response="$1" pattern="$2" label="$3"
  if echo "$response" | grep -q "$pattern"; then
    echo "  PASS [$label]"
    PASS=$((PASS + 1))
  else
    echo "  FAIL [$label] — pattern not found: $pattern"
    FAIL=$((FAIL + 1))
  fi
}

expect_no_error() {
  local response="$1" pattern="$2" label="$3"
  if echo "$response" | grep -qE "$pattern"; then
    echo "  FAIL [$label] — unexpected error found"
    FAIL=$((FAIL + 1))
  else
    echo "  PASS [$label]"
    PASS=$((PASS + 1))
  fi
}

echo "=== mapper-invalid-language.json ==="
R=$(validate_resource /tests/mapper-invalid-language.json)
expect_error   "$R" "questionnaire-mapper-3" "invariant: language must be fpml or jute"
expect_error   "$R" "mapper-language-vs"      "profile MapperExpression: language binding"

echo "=== mapper-invalid-reference.json ==="
R=$(validate_resource /tests/mapper-invalid-reference.json)
expect_error   "$R" "questionnaire-mapper-2" "invariant: reference must be absent"
expect_error   "$R" "mapper-expression"       "profile MapperExpression: reference 0..0"

echo "=== mapper-invalid-no-expression.json ==="
R=$(validate_resource /tests/mapper-invalid-no-expression.json)
expect_error   "$R" "questionnaire-mapper-1" "invariant: expression is required"
expect_error   "$R" "mapper-expression"       "profile MapperExpression: expression 1..1"

echo "=== mapper-valid-expression.json ==="
R=$(validate_resource /tests/mapper-valid-expression.json)
expect_no_error "$R" "questionnaire-mapper"             "no invariant errors"
expect_no_error "$R" "mapper-expression.*(max|minimum)" "no profile cardinality errors"

echo "=== mapper-valid-reference.json ==="
R=$(validate_resource /tests/mapper-valid-reference.json)
expect_no_error "$R" "questionnaire-mapper"             "no invariant errors"
expect_no_error "$R" "mapper-expression.*(max|minimum)" "no profile cardinality errors"

echo ""
echo "Results: $PASS passed, $FAIL failed"
[ "$FAIL" -eq 0 ]
