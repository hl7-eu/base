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
* statusReason ^short = "Reason for the 'exception' statuses of the medication"
* category ^short = "Type of intended use"
* dosage ^short = "	Details of how medication is/was taken or should be taken."
  * route //copy the additional bindign from the ips
* effectivePeriod ^short = "Period when the medication is/was or should be used."
* medication[x] only CodeableConcept or Reference(MedicationEuCore)
* medication[x] from MedicationsUvIps (example)
* reasonCode ^short = "Coded reason for use"
