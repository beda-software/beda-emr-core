Profile: FHIREMRQuestionnaire
Id: software-beda-emr-questionnaire
Title: "FHIR EMR Questionnaire"
Parent: Questionnaire
Description: "An example profile of the Questionnaire resource."

* extension contains QuestionnaireMapper named mapping 0..*
* extension contains http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom named assembledFrom 0..1
* extension contains http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-sourceQueries named sourceQueries 0..*
* extension contains http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext named launchContext 0..*
* extension contains http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembleContext named assembleContext 0..1 MS
* extension contains http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext named itemPopulationContext 0..1
* extension contains http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap named targetStructureMap 0..*

* item.extension contains http://hl7.org/fhir/StructureDefinition/questionnaire-constraint named itemConstraint 0..*
* item.extension contains http://hl7.org/fhir/StructureDefinition/variable named variable 0..*
* item.extension contains http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire named subQuestionnaire 0..1
* item.extension contains http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression named answerExpression 0..1 MS
* item.extension contains http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-choiceColumn named choiceColumn 0..*
* item.extension contains http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression named initialExpression 0..1
* item.extension contains http://hl7.org/fhir/StructureDefinition/questionnaire-referenceResource named referenceResource 0..* MS
* item.extension contains http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl named itemControl 0..1 MS
* item.extension contains http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue named sliderStepValue 0..1
* item.extension contains http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression named calculatedExpression 0..1
* item.extension contains http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext named itemPopulationContext 0..1 MS
* item.extension contains http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression named enableWhenExpression 0..1 MS
* item.extension contains http://hl7.org/fhir/StructureDefinition/questionnaire-hidden named hidden 0..1
* item.extension contains http://hl7.org/fhir/StructureDefinition/mimeType named mimeType 0..*
* item.extension contains http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerOptionsToggleExpression named answerOptionsToggleExpression 0..*
* item.extension contains http://hl7.org/fhir/StructureDefinition/questionnaire-minOccurs named minOccurs 0..1
* item.extension contains http://hl7.org/fhir/StructureDefinition/questionnaire-maxOccurs named maxOccurs 0..1
* item.extension contains http://hl7.org/fhir/StructureDefinition/entryFormat named entryFormat 0..1
* item.extension contains http://hl7.org/fhir/StructureDefinition/regex named regex 0..1
* item.extension contains SliderStart named start 0..1
* item.extension contains SliderStop named stop 0..1
* item.extension contains SliderStartLabel named startLabel 0..1
* item.extension contains SliderStopLabel named stopLabel 0..1
* item.extension contains HelpText named helpText 0..1
* item.extension contains AdjustLastToRight named adjustLastToRight 0..1
* item.extension contains http://hl7.org/fhir/StructureDefinition/questionnaire-unit named unit 0..1
* item.extension contains http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption named unitOption 0..* MS
* item.extension contains Macro named macro 0..1
* item.extension contains InlineChoiceDirection named inlineChoiceDirection 0..1
* item.extension contains RowsNumber named rowsNumber 0..1
