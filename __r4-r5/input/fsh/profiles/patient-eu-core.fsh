Profile: PatientEuCore
Parent: PatientEu
Id: patient-eu-core
Title:    "Patient (EU core)"
Description: """This profile sets minimum expectations for the Patient resource common to most of the use cases.
When the ips-pat-1 invariant is satisfied \(Patient.name.given, Patient.name.family or Patient.name.text SHALL be present\) then this profile complies with the IPS patient profile."""

* insert SetFmmandStatusRule (1, draft)

* name 1..*
* name obeys eu-pat-1

* birthDate 1.. // MS according to IPS
* birthDate.extension contains $data-absent-reason named dob-absent-reason 0..1
* birthDate.extension[dob-absent-reason] ^short = "Reason for not providing the Date of Birth."
* birthDate.extension[dob-absent-reason] ^definition = "Reason for not providing the Date of Birth."

Invariant: eu-pat-1
Description: "given, family, text or a data-absent-reason extension SHALL be present"
Severity: #error
Expression: "family.exists() or given.exists() or text.exists() or extension('http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()"
/* XPath: "f:given or f:family or f:text" */