Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Instance: Questionnaire-assemble
InstanceOf: OperationDefinition
Usage: #definition
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* extension[=].valueInteger = 3
* extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* extension[=].valueInteger.extension.valueCanonical = "http://hl7.org/fhir/uv/sdc/ImplementationGuide/hl7.fhir.uv.sdc"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension[=].valueCode = #trial-use
* extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* extension[=].valueCode.extension.valueCanonical = "http://hl7.org/fhir/uv/sdc/ImplementationGuide/hl7.fhir.uv.sdc"
* url = "http://hl7.org/fhir/uv/sdc/OperationDefinition/Questionnaire-assemble"
* version = "3.0.0"
* name = "SDCAssemble"
* title = "Assemble Modular Questionnaire Operation"
* status = #draft
* kind = #operation
* date = "2022-03-08T18:37:19+00:00"
* publisher = "HL7 International - FHIR Infrastructure Work Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/fiwg"
* description = "The $assemble operation takes a modular questionnaire (one that references sub-questionnaires and/or relies on definition elements to contain the content for item definitions) and produces the equivalent fully-inline Questionnaire.  Full details on the process can be found [here](modular.html)."
* jurisdiction = $m49.htm#001
* code = #assemble
* resource = #Questionnaire
* system = false
* type = true
* instance = false
* inputProfile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-modular"
* parameter[0].name = #questionnaire
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The [Modular Questionnaire](StructureDefinition-sdc-questionnaire-modular.html) to assemble the content of."
* parameter[=].type = #Resource
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The fully assembled [Questionnaire](StructureDefinition-sdc-questionnaire.html) with all subQuestionnaires inlined and all items with item.definitions have had relevant metadata propagated into the item."
* parameter[=].type = #Resource
* parameter[+].name = #outcome
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The OperationOutcome indicating any warnings or information messages with the assembly process"
* parameter[=].type = #Resource
