### EHDS Logical Data Models

Logical data models (or information models) for the **European Health Data Space (EHDS)** are developed by the [**Xt-EHR Joint Action**](https://www.xt-ehr.eu/).

These models are **refined and enhanced versions** of the data sets defined in the [**eHealth Network (eHN) Guidelines**](https://health.ec.europa.eu/ehealth-digital-health-and-care/digital-health-and-care/eu-cooperation/ehealth-network_en#ehealth-network-guidelines).

This Implementation Guide (IG) aims to **align with the EHDS logical models** and to **provide HL7 FHIR profiles** derived from these models.

> **Note:**
> The Xt-EHR logical models are **under active revision and continuous refinement**.
> Updates and improvements made by the Xt-EHR project will be **progressively incorporated** into this Implementation Guide to maintain alignment with the evolving EHDS specifications.

The EHDS logical models currently supported in this version of the guide are listed below.
For the most recent and in-progress versions, please refer to the [**Xt-EHR EHDS Logical Information Models**](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common) Implementation Guide.

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

| **Model**                                                                                                   | **Description**                                                                                                                                                  |
| ----------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [EHDSAlert](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSAlert.html)                           | EHDS refined base model for clinical alerts                                                                                                                      |
| [EHDSAllergyIntolerance](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSAllergyIntolerance.html) | EHDS refined base model for allergy or intolerance information                                                                                                   |
| [EHDSCondition](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSCondition.html)                   | EHDS refined base model for a clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern |
| [EHDSProcedure](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSProcedure.html)                   | EHDS refined base model for an action that is or was performed on or for a patient                                                                               |
| [EHDSImmunisation](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSImmunisation.html)             | EHDS refined base model for Immunisation                                                                                                                         |

---

#### 💊 Medication Models

| **Model**                                                                                                     | **Description**                                                                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [EHDSMedication](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSMedication.html)                   | Logical model for prescribed/dispensed medication. Shared by statements, requests, dispensations, and treatment lines. Supports both generic (virtual) and branded (real) products. |
| [EHDSMedicationStatement](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSMedicationStatement.html) | Statement about a single medication as part of a medication summary                                                                                                                 |

---

**Future updates:**
Additional EHDS logical models will be added as they become available through the [Xt-EHR project](https://www.xt-ehr.eu/).

