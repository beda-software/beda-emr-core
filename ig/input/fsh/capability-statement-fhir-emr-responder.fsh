Instance: fhir-emr-responder
InstanceOf: CapabilityStatement
Usage: #definition
* version = "0.1.0-ci-build"
* name = "FHIREMRResponderCapabilityStatement"
* title = "FHIR EMR Responder CapabilityStatement"
* status = #active
* kind = #requirements
* fhirVersion = #4.0.1
* date = "2025-02-07"
* format[0] = #json
* format[+] = #xml
* format[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* format[=].extension.valueCode = #SHALL
* format[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* format[=].extension.valueCode = #SHOULD
* patchFormat = #application/json-patch+json
* patchFormat.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* patchFormat.extension.valueCode = #SHOULD
* rest.mode = #server
* rest.resource.extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource.extension[=].valueCode = #SHALL
* rest.resource.type = #Patient
* rest.resource.profile = "https://emr.beda.software/StructureDefinition/fhir-emr-patient"
* rest.resource.interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource.interaction[=].extension.valueCode = #SHALL
* rest.resource.interaction[=].code = #read
* rest.resource.interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource.interaction[=].extension.valueCode = #SHALL
* rest.resource.interaction[=].code = #search-type
* rest.resource.referencePolicy = #resolves
* rest.resource.referencePolicy.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource.referencePolicy.extension.valueCode = #SHOULD
* rest.resource.searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource.searchParam[=].extension.valueCode = #SHALL
* rest.resource.searchParam[=].name = "_id"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource.searchParam[=].type = #token
* rest.resource.searchParam[=].documentation = "The requester **SHOULD** support `_id`.\n\nThe responder **SHALL** support `_id`."
* rest.resource.searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource.searchParam[=].extension.valueCode = #SHOULD
* rest.resource.searchParam[=].name = "name"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-name"
* rest.resource.searchParam[=].type = #string
* implementationGuide[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* implementationGuide[=].extension.valueCode = #SHALL
* implementationGuide[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* implementationGuide[=].extension.valueCode = #SHOULD
* implementationGuide[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* implementationGuide[=].extension.valueCode = #SHOULD
