//====== Profiles =====================================
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerEu
Parent:   Practitioner // http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips
Id:       practitioner-eu
Title:    "Practitioner (EU base)"
Description: """This profile specifies how the HL7 FHIR Practitioner resource should be used for conveying commonly used concepts in the European context."""
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (2, draft)
* . obeys name-or-identifier
* identifier ^short = "Practitioner identifier"
* address only AddressEu
* name ^short = "Practitioner Name" // only HumanNameEu
* telecom ^short = "Contact details for the practitioner"
//-------------------------------------------------------------------------------------------
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerRoleEu
Parent:   PractitionerRole // http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips
Id:       practitionerRole-eu
Title:    "PractitionerRole (EU base)"
Description: """This profile specifies how the HL7 FHIR PractitionerRole resource should be used for conveying commonly used concepts in the European context."""
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (2, draft)
* identifier ^short = "Business identifier"
* organization only Reference (OrganizationEu)
* practitioner only Reference (PractitionerEu)
* location only Reference (LocationEu)
* telecom ^short = "Contact details that are specific to the role, location, or service"
* code ^short = "Roles which this practitioner may perform."
* specialty ^short = "Specialty of the practitioner"