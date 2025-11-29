//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationStatementEuCore
Parent:   MedicationStatement
Id:       medicationStatement-eu-core
Title:    "MedicationStatement (EU core) [WIP]"
Description: """This profile sets minimum expectations for the MedicationStatement resource common to most of the use cases.
This profile is adapted from the MPD work."""
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
* identifier 
  * ^short = "Medication Statement Identifier"
// * status ^short = "Current state of the dispensation"
* subject only Reference( PatientEuCore )
* status ^short = "State of the medication"
// should be removed ?
* statusReason ^short = "Reason for the 'exception' statuses of the medication"
* category ^short = "Type of intended use"
  * ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.extension[=].extension[+].url =  #purpose
  * ^binding.extension[=].extension[=].valueCode =  #preferred
  * ^binding.extension[=].extension[+].url = #valueSet
  * ^binding.extension[=].extension[=].valueCanonical =  Canonical(MedicationIntendedUseEuVs)
  * ^binding.extension[=].extension[+].url = "documentation"
  * ^binding.extension[=].extension[=].valueMarkdown = "When category is used for describing the intended use of the medication (e.g. Prophylactic use)."
* dosage ^short = "	Details of how medication is/was taken or should be taken."
  * route //copy the additional bindign from the ips
* effectivePeriod ^short = "Period when the medication is/was or should be used."
* medication[x] only CodeableConcept or Reference(MedicationEuCore)
* medication[x] from $medication-uv-ips (example)
* extension contains $medicationStatement-adherence-r5 named adherence 0..1
* extension[adherence].extension[code] ^short = "Type of adherence."
* reasonCode ^short = "Coded reason for use"
