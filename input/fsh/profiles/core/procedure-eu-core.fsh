Profile: ProcedureEuCore
Parent: Procedure
// Parent: ProcedureUvIps
Id: procedure-eu-core
Title:    "Procedure (EU core) [WIP]"
Description: "This profile represents the constraints applied to the Procedure resource by this guide."
// * insert ImposeProfile ( $Procedure-uv-ips, 0 )  // Check if this is appropriate (see  support)
* extension contains $procedure-targetBodyStructure named bodySite 0..1
* extension[bodySite].valueReference only Reference(BodyStructureEuCore)
* text ^short = "Textual representation of the procedur"
 // textual representation of the procedure should be provided according to the EHN data set
* status
* code only $CodeableConcept-uv-ips
* code 1.. 
  * ^binding.description = "Codes describing the type of  Procedure"
  * ^definition = "Identification of the procedure or recording of \"absence of relevant procedures\" or of \"procedures unknown\"."
* code from $procedures-uv-ips (preferred) 
// ProceduresSnomedAbsentUnknownHdrVS 
/* * code ^binding.extension[0].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/procedures-uv-ips"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Codes for procedures in IPS"
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding" */
* subject only Reference(PatientEuCore)
* subject.reference 1..
* performed[x] 1..1
/* * performed[x].extension contains $data-absent-reason named data-absent-reason 0..1
* performed[x].extension[data-absent-reason] ^short = "performed[x] absence reason"
* performed[x].extension[data-absent-reason] ^definition = "Provides a reason why the performed is missing." */
* performer.actor only Reference(PractitionerRoleEuCore or PractitionerEuCore or Device or PatientEuCore or RelatedPerson or  OrganizationEuCore)
* performer.onBehalfOf only Reference(OrganizationEuCore)
* reasonCode ^short = "Why the procedure was performed (code)"
* reasonReference only Reference ( ConditionEuCore or Observation or ProcedureEuCore or DiagnosticReport or DocumentReference)
  * ^short = "Why the procedure was performed (details)"
* outcome ^short = "Outcome of the procedure"
* complication ^short = "Complications that occurred during the procedure (code)"
* complicationDetail only Reference(ConditionEuCore)
  * ^short = "Complications that occurred during the procedure (details)"
* focalDevice ^short = "Device implanted, removed or otherwise manipulated"
* focalDevice.manipulated only Reference ( Device ) // DeviceEuCore
* bodySite only $CodeableConcept-uv-ips
* bodySite from SNOMEDCTBodyStructures (preferred)
* bodySite
  * ^definition = "Anatomical location which is the focus of the problem."
  //* extension contains LateralityQualifier named laterality 0..1
