//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  FlagEuCore
Parent:   Flag
Id:       flag-eu-core
Title:    "Flag (EU core) [WIP]"
Description: """This profile sets minimum expectations for the Flag resource common to most of the use cases."""
//-------------------------------------------------------------------------------------------
// * insert SetFmmandStatusRule (1, draft)
* extension contains $flag-detail named flagDetailExt 0..*
* extension contains $flag-priority named flagPriorityExt 0..1
* extension[flagDetailExt]
* extension[flagPriorityExt]
* status ^short = "Alert status"
* code ^short = "Coded or textual message to display to user."
* subject only Reference(PatientEuCore)