//====== Profiles =====================================
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerEuCore
Parent:   PractitionerEu
Id:       practitioner-eu-core
Title:    "Practitioner (EU Core)"
Description: "This profile defines how to represent Practitioners in FHIR for the purpose of the  HL7 Europe project."
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
* insert ImposeProfile($Practitioner-uv-ips, 0)
* name 1..
//-------------------------------------------------------------------------------------------
/* 
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
 */