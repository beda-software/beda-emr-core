#!/usr/bin/env bash
set -euo pipefail

COMPOSE="docker compose -f $(dirname "$0")/../docker-compose.tests.yaml"

cleanup() {
    $COMPOSE down --remove-orphans
}
trap cleanup EXIT

$COMPOSE up -d hapi-fhir hapi-fhir-ready
$COMPOSE wait hapi-fhir-ready
$COMPOSE run --rm validate
