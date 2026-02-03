### EHDS Logical Data Models

Logical data models (or information models) for the **European Health Data Space (EHDS)** are **currently under development** by the [**Xt-EHR Joint Action**](https://www.xt-ehr.eu/). These models will form the **basis of the Joint Action’s proposal** for the future EHDS Implementing Act.

They represent **evolving, refined interpretations** of the data sets described in the [**eHealth Network (eHN) Guidelines**](https://health.ec.europa.eu/ehealth-digital-health-and-care/digital-health-and-care/eu-cooperation/ehealth-network_en#ehealth-network-guidelines), and are expected to be updated further during the Joint Action process.

This Implementation Guide (IG) aims to **align with the emerging EHDS logical models** and to **provide HL7 FHIR profiles** that **realise the requirements identified in these models*

The EHDS logical models currently supported in this version of the guide are listed below.
For the most recent and in-progress versions, please refer to the [**Xt-EHR EHDS Logical Information Models**](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common) Implementation Guide.


<div class="model-map-block">
      <div class="callout-wrapper">
      <div class="callout-box">
        <strong>Ongoing alignment:</strong>
            The Xt-EHR logical models are under active revision and continuous refinement.
            Updates from Xt-EHR will be progressively incorporated into this Implementation
            Guide to maintain alignment with the evolving EHDS specifications.
      </div>
      </div>
</div>

---

### Xt-EHR Logical Models

#### 🧩 Foundational Models

| **Model**                                                                                               | **Description**                                                    |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------ |
| [EHDSAddress](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSAddress.html)                   | EHDS refined base model for Address structure                      |
| [EHDSHumanName](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSHumanName/)                   | EHDS refined base model for Human Name                             |
| [EHDSTelecom](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSTelecom.html)                   | EHDS refined base model for telecommunications and contact details |
| [EHDSBodyStructure](https://www.xt-ehr.eu/fhir/models/0.2.1/StructureDefinition-EHDSBodyStructure.html) | EHDS refined base model for Body structure                         |

---

#### 🧑‍⚕️ Entity Models

| **Model**                                                                                                   | **Description**                                                       |
| ----------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------- |
| [EHDSPatient](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSPatient/)                           | EHDS refined base model for Patient (subject of care)                 |
| [EHDSPatientAnimal](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSPatientAnimal.html)           | EHDS refined base model for Animal Patient                            |
| [EHDSHealthProfessional](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSHealthProfessional.html) | EHDS refined base model for Health Professional                       |
| [EHDSOrganisation](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSOrganisation/)                 | EHDS refined base model for healthcare organisations and providers    |
| [EHDSLocation](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSLocation.html)                     | EHDS refined base model for location, site, or service delivery place |

---

#### 🩺 Clinical Information Models

| **Model** | **Description** |
| --- | --- |
| [EHDSAlert](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSAlert.html) | EHDS refined base model for clinical alerts |
| [EHDSAllergyIntolerance](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSAllergyIntolerance.html) | EHDS refined base model for allergy or intolerance information |
| [EHDSCondition](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSCondition.html) | EHDS refined base model for a clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern |
| [EHDSObservation](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSObservation.html) | EHDS refined base model for medical test results and other clinical observations |
| [EHDSProcedure](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSProcedure.html) | EHDS refined base model for an action that is or was performed on or for a patient |
| [EHDSImmunisation](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSImmunisation.html) | EHDS refined base model for immunisation |


#### 📄 Document Models

| **Model**                                                                                                     | **Description**                                                                                                  |
| ------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| [EHDSDocument](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSDocument.html)                       | EHDS refined base model for clinical documents, including header, authorship, attestation, and legal metadata    |

---

#### 💊 Medication Models

| **Model**                                                                                                     | **Description**                                                                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [EHDSMedication](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSMedication.html)                   | Logical model for prescribed/dispensed medication. Shared by statements, requests, dispensations, and treatment lines. Supports both generic (virtual) and branded (real) products. |
| [EHDSMedicationStatement](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSMedicationStatement.html) | Statement about a single medication as part of a medication summary                                                                                                                 |
