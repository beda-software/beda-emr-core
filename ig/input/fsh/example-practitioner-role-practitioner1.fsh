Alias: $practitioner-role = http://terminology.hl7.org/CodeSystem/practitioner-role
Alias: $sct = http://snomed.info/sct

Instance: practitionerrole1
InstanceOf: FHIREMRPractitionerRole
Usage: #example
* availableTime[0].daysOfWeek = #sat
* availableTime[=].availableEndTime = "10:00:00"
* availableTime[=].availableStartTime = "08:00:00"
* availableTime[+].daysOfWeek = #fri
* availableTime[=].availableEndTime = "17:00:00"
* availableTime[=].availableStartTime = "14:00:00"
* availableTime[+].daysOfWeek = #thu
* availableTime[=].availableEndTime = "17:00:00"
* availableTime[=].availableStartTime = "14:00:00"
* availableTime[+].daysOfWeek = #wed
* availableTime[=].availableEndTime = "14:00:00"
* availableTime[=].availableStartTime = "08:00:00"
* availableTime[+].daysOfWeek = #tue
* availableTime[=].availableEndTime = "14:00:00"
* availableTime[=].availableStartTime = "08:00:00"
* availableTime[+].daysOfWeek = #mon
* availableTime[=].availableEndTime = "14:00:00"
* availableTime[=].availableStartTime = "08:00:00"
* code = $practitioner-role#doctor "Doctor"
* healthcareService[0] = Reference(HealthcareService/consultation) "The first appointment"
* healthcareService[+] = Reference(HealthcareService/follow-up) "A follow up visit"
* practitioner = Reference(Practitioner/practitioner1)
* specialty = $sct#394583002 "Endocrinology"
