# FHIR EMR Implementation Guide

WIP

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

