Profile: PatientEuCore
Parent: PatientEu
Id: patient-eu-core
Title:    "Patient (EU Core)"
Description: """This profile defines how to represent a human Patient in HL7 FHIR in the european context.
When the ips-pat-1 invariant is satisfied \(Patient.name.given, Patient.name.family or Patient.name.text SHALL be present\) then this profile complies with the IPS patient profile."""
* insert SetFmmandStatusRule (1, draft)
* birthDate 1.. // MS according to IPS
* birthDate.extension contains $data-absent-reason named dob-absent-reason 0..*
* birthDate.extension[dob-absent-reason] ^short = "Reason for not providing the Date of Birth."
* birthDate.extension[dob-absent-reason] ^definition = "Reason for not providing the Date of Birth."
