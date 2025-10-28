Profile: PatientAnimalEuCore
Parent: PatientEu
Id: patient-animal-eu-core
Title:    "Patient: Animal (EU core)"
Description: """This profile defines how to represent an Animal as subject of care in FHIR for the purpose of this guide.
This is used to identify the species when a specimen is collected from an animal"""
* insert SetFmmandStatusRule ( 2, trial-use)
* . ^short = "Information about an animal receiving health care services"
* extension contains $patient-animal named patient-animal 1..1
* extension[patient-animal].extension[species].valueCodeableConcept from SpeciesTypesEuVs (example)
* extension[gender-identity] 0..
* extension[pronouns] 0..
* extension[patient-citizenship] 0..
* extension[patient-nationality] 0..
* extension contains $recordedSexOrGender named recordedSexOrGender 0..1
* extension[recordedSexOrGender]
* identifier ^short = "Animal identifier"
* telecom ..0
  * ^short = "Use contact.telecom"
  * ^comment = "Animals do not have phones, their contacts do. Contact.telecom should be used."
* maritalStatus ..0
* communication ..0
* deceased[x] ^short = "Deceased status"