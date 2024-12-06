
//====== Profiles =====================================

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerEu
Parent:   Practitioner // http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips
Id:       practitioner-eu
Title:    "Practitioner (EU)"
Description: "This profile defines how to represent Practitioners in FHIR for the purpose of the  HL7 Europe project."
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
* . obeys name-or-identier
* identifier ^short = "Practitioner identifier"
* address only AddressEu
* name only HumanNameEu
//-------------------------------------------------------------------------------------------

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerRoleEu
Parent:   PractitionerRole // http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips
Id:       practitionerRole-eu
Title:    "PractitionerRole (EU)"
Description: "This profile defines how to represent Practitioners (with their roles) in FHIR for the purpose of the  HL7 Europe project."
//-------------------------------------------------------------------------------------------

* insert SetFmmandStatusRule (1, draft)
* identifier ^short = "Business identifier"
* organization only Reference (OrganizationEu)
* practitioner only Reference (PractitionerEu)
//-------------------------------------------------------------------------------------------
