//====== Profiles =====================================
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerEu
Parent:   Practitioner // http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips
Id:       practitioner-eu
Title:    "Practitioner (EU base)"
Description: """This profile specifies how the HL7 FHIR Practitioner resource should be used for conveying commonly used concepts in the European context."""
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (2, trial-use)
* . obeys name-or-identier
* identifier ^short = "Practitioner identifier"
* address only AddressEu
* name only HumanNameEu
//-------------------------------------------------------------------------------------------
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerRoleEu
Parent:   PractitionerRole // http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips
Id:       practitionerRole-eu
Title:    "PractitionerRole (EU base)"
Description: """This profile specifies how the HL7 FHIR PractitionerRole resource should be used for conveying commonly used concepts in the European context."""
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (2, trial-use)
* identifier ^short = "Business identifier"
* organization only Reference (OrganizationEu)
* practitioner only Reference (PractitionerEu)
//-------------------------------------------------------------------------------------------
