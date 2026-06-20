# FHIR EMR Implementation Guide


## Development environment setup

This project uses [mise](https://mise.jdx.dev) to manage all required tools (Ruby, Java, Node, SUSHI, Python).

### Prerequisites

Install mise if you don't have it:

```bash
curl https://mise.run | sh
```

### First-time setup

```bash
# Trust the project's mise.toml (required once per clone)
mise trust

# Install all tools (Ruby 3.4.9, Java 17, Node 22, fsh-sushi, Python 3)
mise install

# Install Jekyll and Ruby gem dependencies
mise run setup

# Download IG Publisher (~100 MB) and build scripts
mise run update-publisher
```

### Build

```bash
mise run build
```

The built IG is in `output/`. Open `output/index.html` to view it.

## Validation / Testing

The `tests/` directory contains test fixtures (valid and invalid Questionnaire instances) and two ways to validate them against the IG profiles.

### Option 1: FHIR Validator CLI (fast, no Docker required)

Download the validator once:

```bash
bash tests/download_validator.sh
```

Build the IG (requires SUSHI and IG Publisher):

```bash
./_genonce.sh
```

Run all tests in a single JVM call:

```bash
bash tests/validate.sh
```

The script passes all five fixtures to the validator together, splits the output by file, and reports PASS/FAIL for each expected error or clean result.

### Option 2: HAPI FHIR JPA Server (Docker)

Requires Docker and a built IG (`output/package.tgz` produced by `_genonce.sh`).

```bash
bash tests/run_docker_tests.sh
```

This starts a HAPI FHIR R4 server, loads the IG package at startup via `tests/hapi-application.yaml`, then runs `tests/validate_api.sh` which posts each fixture to the `Questionnaire/$validate` endpoint and checks the response. Containers are torn down automatically on exit.

---

## Zen project dropped support

It's strongly recommended to migrate to the new IG that located in this repository, 
but if it's not possible to migrate, the zen project was moved to a separate repository https://github.com/beda-software/beda-emr-core-zen-legacy

zen-package.edn should be updated with new url:

```edn
{:deps {beda-emr-core "https://github.com/beda-software/beda-emr-core-zen-legacy.git"
        hl7-fhir-r4-core "https://github.com/zen-fhir/hl7-fhir-r4-core.git"
        hl7-terminology-r4 "git@github.com:zen-fhir/hl7-terminology-r4.git"}}
```

