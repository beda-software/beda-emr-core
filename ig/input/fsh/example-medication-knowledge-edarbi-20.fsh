Alias: $custom-medication-list = http://beda.software/custom-medication-list
Alias: $cost-type = http://terminology.hl7.org/CodeSystem/cost-type
Alias: $medication-form-codes = http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm
Alias: $rxnorm = http://www.nlm.nih.gov/research/umls/rxnorm
Alias: $medicationknowledge-package-type = http://terminology.hl7.org/CodeSystem/medicationknowledge-package-type

Instance: edarbi-20
InstanceOf: MedicationKnowledge
Usage: #example
* amount = 25 '385055001' "Tablet"
* code = $custom-medication-list#edarbi-20mg-25tablets "Edarbi 20mg 25 tablets"
* cost.cost.value = 4
* cost.cost.currency = #usd
* cost.type = $cost-type#wholesale "Wholesale Price"
* doseForm = $medication-form-codes#385055001 "Tablet"
* ingredient.itemCodeableConcept = $rxnorm#1091643 "azilsartan"
* ingredient.isActive = true
* ingredient.strength.numerator = 20 'mg' "Milligram"
* ingredient.strength.denominator = 1 'tablet' "Tablet"
* packaging.type = $medicationknowledge-package-type#box "Box"
* status = #active
