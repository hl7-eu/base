//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  FlagEuCore
Parent:   Flag
Id:       flag-eu-core
Title:    "Flag (EU core)"
Description: """This profile defines the core constraints and extensions for a Flag resource when used in European systems for communicating warnings, alerts, or reminders about important health information."""
//-------------------------------------------------------------------------------------------
// * insert SetFmmandStatusRule (1, draft)
* identifier ^short = "Alert bussiness Identifier"
* extension contains $flag-detail named flagDetailExt 0..*
* extension contains $flag-priority named flagPriorityExt 0..1
* extension contains $note named note 0..*
* extension[flagDetailExt]
* extension[flagPriorityExt]
* extension[note]
* status ^short = "Alert status"
* code ^short = "Coded or textual message to display to user."
* subject only Reference(PatientEuCore)
* period ^short = "Time period when the alert is active"