Instance: PractitionerRoleEuCoreExample
InstanceOf: PractitionerRoleEuCore
Title: "Example PractitionerRole (EU core)"
Description: "An example of a PractitionerRole resource conforming to the PractitionerRole (EU core) profile."
* id = "practitionerRole-eu-core-example"
* practitioner = Reference(PractitionerEuCoreExample)
* organization = Reference(OrganizationExample)
* code = http://snomed.info/sct#394814009 "General practice (specialty)"
* specialty = http://snomed.info/sct#408443003 "General medical practice"
* active = true
