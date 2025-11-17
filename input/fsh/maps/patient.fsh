Instance: EHDSPatient2PatientEuCore
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/base/ConceptMap/EHDSPatient2PatientEuCore"
* name = "EHDSPatient2PatientEuCore"
* title = "EHDSPatient to PatientEuCore Mapping"
* status = #draft
* experimental = false
* description = "Mapping from EHDSPatient (Logical Model) to Patient EU Core"
* sourceUri = "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
* targetUri = "http://hl7.eu/fhir/base/StructureDefinition/patient-eu-core"

* group[+]
  * source = "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
  * target = "http://hl7.eu/fhir/base/StructureDefinition/patient-eu-core"
  * insert ConceptMapElement(personalIdentifier, An identifier of the patient that is unique within a defined scope., Patient.identifier, Patient identifiers, equivalent)
  * insert ConceptMapElement(name, Name associated with the patient/subject, Patient.name, A name associated with the patient, equivalent)
  * insert ConceptMapElement(dateOfBirth, Date of birth., Patient.birthDate, The date of birth for the patient, equivalent)
  * insert ConceptMapElement(administrativeGender, Administrative gender, Patient.gender, Administrative gender, equivalent)
  * insert ConceptMapElement(address, Mailing and home or office addresses, Patient.address, An address for the individual, equivalent)
  * insert ConceptMapElement(telecom, Telecommunication contact information, Patient.telecom, A contact detail for the patient, equivalent)
  * insert ConceptMapElement(maritalStatus, Marital (civil\) status of a patient., Patient.maritalStatus, Marital (civil\) status of a patient., equivalent)
  * insert ConceptMapElement(communicationLanguage, Language that can be used to communicate with the patient about their health, Patient.communication.language, Communication language, equivalent)


