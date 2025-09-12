# FHIR EMR Implementation Guide


## Local build

### Download ig-publisher

``` bash
curl -O https://github.com/HL7/fhir-ig-publisher/releases/download/1.8.12/publisher.jar 
```

### Build static

``` bash
java -jar publisher.jar -ig ig/
```

### Open index.html

``` bash
open ig/output/index.html
```

## Zen project dropped support

It's strongly recommended to migrate to the new IG that located in this repository, 
but if it's not possible to migrate, the zen project was moved to a separate repository https://github.com/beda-software/beda-emr-core-zen-legacy

zen-package.edn should be updated with new url:

```edn
{:deps {beda-emr-core "https://github.com/beda-software/beda-emr-core-zen-legacy.git"
        hl7-fhir-r4-core "https://github.com/zen-fhir/hl7-fhir-r4-core.git"
        hl7-terminology-r4 "git@github.com:zen-fhir/hl7-terminology-r4.git"}}
```

