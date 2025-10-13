
<!-- 
extensions

{% for sd_hash in site.data.structuredefinitions -%}
  {%- assign sd = sd_hash[1] -%}
  {%- if sd.kind  == "complex-type" and sd.type != "Extension" -%}
   <li> <a href="{{sd.path}}">{{sd.name}}</a>{{sd.title}}. {{sd.description}} </li>
  {%- endif -%}
{%- endfor -%} -->


Logical data models or information models for EHDS are created by the [Xt-EHR project](https://www.xt-ehr.eu/).

These models are refined and enhanced versions of the [eHN Guidelines](https://health.ec.europa.eu/ehealth-digital-health-and-care/digital-health-and-care/eu-cooperation/ehealth-network_en#ehealth-network-guidelines) data sets.

This IG aims to conform to EHDS logical models, and provide the HL7 FHIR profiles based on these models.

The currently available EHDS logical models as proposed by the Xt-ERH Joint Action and used for this version of the guide are listed below.

The most recent, in-development version of the models can be seen in the [Xt-EHR EHDS Logical Information Models](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common) IG.

### Xt-EHR Models

| **Model**                                                                                                       | **Description**                                                                              |
| ------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------- |
| [EHDSAddress](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSAddress.html)                       | EHDS refined base model for Address structure                                                |
| [EHDSBodyStructure](https://www.xt-ehr.eu/fhir/models/0.2.1/StructureDefinition-EHDSBodyStructure.html)                  | EHDS refined base model for Body structure                                                   |
| [EHDSHealthProfessional](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSHealthProfessional.html) | EHDS refined base model for Health professional (HP)                            |
| [EHDSHumanName](https://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHumanName/)                                    | EHDS refined base model for Human name                                                       |
| [EHDSLocation](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSLocation.html)                     | EHDS refined base model for place / position / details where services/resources are provided |
| [EHDSOrganisation](https://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation/)                              | EHDS refined base model for health provider or any organisation                              |
| [EHDSPatient](https://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient/)                                        | EHDS refined base model for patient (subject of care) information                            |
| [EHDSPatientAnimal](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSPatientAnimal.html)           | EHDS refined base model for Patient:Animal                                   |
| [EHDSTelecom](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSTelecom.html)                       | EHDS refined base model for telecommunication contact information              |



