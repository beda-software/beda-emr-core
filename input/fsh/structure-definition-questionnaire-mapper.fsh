CodeSystem: MapperLanguageCS
Id: mapper-language-cs
Title: "Mapper Language Code System"
* #fpml "FHIRPath Mapping Language"
* #jute "JUTE"

ValueSet: MapperLanguageVS
Id: mapper-language-vs
Title: "Mapper Language Value Set"
* codes from system MapperLanguageCS

Profile: MapperExpression
Parent: Expression
Id: mapper-expression
Title: "Mapper Expression"
Description: "Expression constrained to mapper languages (fpml, jute) with no reference"
* language from MapperLanguageVS (required)
* expression 1..1
* reference 0..0

Invariant: questionnaire-mapper-1
Description: "valueExpression.expression is required"
Severity: #error
Expression: "value.ofType(Expression).empty() or value.ofType(Expression).expression.exists()"

Invariant: questionnaire-mapper-2
Description: "valueExpression.reference must be absent"
Severity: #error
Expression: "value.ofType(Expression).empty() or value.ofType(Expression).reference.empty()"

Invariant: questionnaire-mapper-3
Description: "valueExpression.language must be fpml or jute"
Severity: #error
Expression: "value.ofType(Expression).empty() or value.ofType(Expression).language = 'fpml' or value.ofType(Expression).language = 'jute'"

Extension: QuestionnaireMapper
Id: questionnaire-mapper
Title: "Questionnaire Mapper"
Description: "TODO: WRITE DESCRIPTION"
* value[x] only Reference or MapperExpression
* valueReference ^short = "Reference to Aidbox Mapping custom resource"
* valueExpression ^short = "Inline mapping expression"
* obeys questionnaire-mapper-1 and questionnaire-mapper-2 and questionnaire-mapper-3
