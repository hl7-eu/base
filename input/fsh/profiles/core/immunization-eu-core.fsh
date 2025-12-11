//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ImmunizationEuCore
Parent:   Immunization
Id:       immunization-eu-core
Title:    "Immunization (EU core)"
Description: """This profile sets minimum expectations for the Immunization resource common to most of the use cases."""
//-------------------------------------------------------------------------------------------
* ^experimental = false
* ^purpose = "This profile constrains the Immunization resource for the purpose of this guide."
// * insert ImposeProfile($Immunization-uv-ips, 0)
* insert SetFmmandStatusRule (1, draft)
* status ^short = "Immunization status."
* statusReason ^short = "Reason for not performing."
/* * extension contains $immunization-basedOn-r5 named basedOn 0..1
* extension[basedOn].valueReference only Reference ( ImmunizationRecommendation ) */
* extension contains $immunization-administeredProduct-r5 named administeredProduct 0..1
* extension[administeredProduct].extension[concept]
* extension[administeredProduct].extension[reference].valueReference only Reference ( MedicationEuCore ) 
* reasonCode ^short = "Reasons for the administration."
* vaccineCode from $vaccines-uv-ips (preferred)
  * ^binding.extension[+].extension[0].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = #candidate
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/vaccines-whoatc-uv-ips"
  * ^binding.extension[=].extension[+].url = "documentation"
  * ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a vaccines value set from the WHO ATC code system for use in specific jurisdictional or other contexts where use of the ATC terminology is preferred."
  * ^binding.extension[=].extension[+].url = "shortDoco"
  * ^binding.extension[=].extension[=].valueString = "For when WHO ATC code system is preferred"
  * ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.description = "The type of vaccine for particular disease or diseases against which the patient has been immunised, or a code for absent/unknown immunization."

  * ^binding.extension[+].extension[0].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = #candidate
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = "http://terminology.ehdsi.eu/ValueSet/eHDSIVaccine"
  * ^binding.extension[=].extension[+].url = "documentation"
  * ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to the cross-border vaccines value set."
  * ^binding.extension[=].extension[+].url = "shortDoco"
  * ^binding.extension[=].extension[=].valueString = "For EU cross-border use"
  * ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.description = "The type of vaccine for particular disease or diseases against which the patient has been immunised, or a code for absent/unknown immunization."
* patient only Reference(PatientEuCore)
* occurrence[x] ^short = "Date of vaccination"
// TO BE ACTIVATED WHEN EXTENSIONS WILL BE PUBLISHED
// * occurrenceDateTime
//  * extension contains PeriodsOfLife named periodOfLife 0..1
//  * extension[periodOfLife].valueCodeableConcept from PeriodsOfLifeEuVs (preferred)
* location only Reference(LocationEuCore)
* manufacturer ^short = "Vaccine manufacturer/MAH"
* lotNumber ^short = "Batch/lot number"
* performer 
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "$this.function"
  * ^slicing.ordered = false
  * ^slicing.rules = #open
* performer contains administeringCentreOrHp 0..*
* performer[administeringCentreOrHp] ^short = "Administering centre"
* performer[administeringCentreOrHp].function = $v2-0443#AP	// "Administering Provider" code to be checked
* performer[administeringCentreOrHp].actor only Reference( OrganizationEuCore or PractitionerRoleEuCore or PractitionerEuCore )
* protocolApplied.targetDisease from $target-diseases-uv-ips (preferred) // Check Value Set
* protocolApplied.targetDisease
  * ^binding.extension[+].extension[0].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = #candidate
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = "http://terminology.ehdsi.eu/ValueSet/eHDSIIllnessandDisorder"
  * ^binding.extension[=].extension[+].url = "documentation"
  * ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a diseases value set for use in specific jurisdictional or for cross-border settings."
  * ^binding.extension[=].extension[+].url = "shortDoco"
  * ^binding.extension[=].extension[=].valueString = "For when WHO ATC code system is preferred"
  * ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.description = "The diseases against which the patient has been immunised"
* protocolApplied
  * doseNumber[x] ^short = "Dose Number"
  * seriesDoses[x] ^short = "Number of doses"
/* 
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ImmunizationRecommendationEuCore
Parent:   ImmunizationRecommendation
Id:       immunizationRecommendation-eu-core
Title:    "ImmunizationRecommendation (EU core)"
Description: """This profile defines how to represent Immunization Recommandations for the purpose of this guide."""
//-------------------------------------------------------------------------------------------
* date ^short = "When recomendation was created"
* patient only Reference (PatientEuCore)
* recommendation
  * vaccineCode from http://hl7.org/fhir/uv/ips/ValueSet/vaccines-uv-ips (preferred)
  * vaccineCode ^binding.extension[+].extension[0].url = "purpose"
  * vaccineCode ^binding.extension[=].extension[=].valueCode = #candidate
  * vaccineCode ^binding.extension[=].extension[+].url = "valueSet"
  * vaccineCode ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/vaccines-whoatc-uv-ips"
  * vaccineCode ^binding.extension[=].extension[+].url = "documentation"
  * vaccineCode ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a vaccines value set from the WHO ATC code system for use in specific jurisdictional or other contexts where use of the ATC terminology is preferred."
  * vaccineCode ^binding.extension[=].extension[+].url = "shortDoco"
  * vaccineCode ^binding.extension[=].extension[=].valueString = "For when WHO ATC code system is preferred"
  * vaccineCode ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * vaccineCode ^binding.description = "The type of vaccine for particular disease or diseases against which the patient has been immunised, or a code for absent/unknown immunization."
  * ^short = "Generic description of the vaccine/prophylaxis or its component(s)"
* recommendation.targetDisease from $eHDSIIllnessandDisorder (preferred) // Check Value Set
  * ^short = "Disease or agent that the vaccination provides protection against"
* recommendation.forecastStatus ^short = "Recommendation status"
* recommendation.dateCriterion ^slicing.discriminator[0].type = #value
* recommendation.dateCriterion ^slicing.discriminator[0].path = "code"
* recommendation.dateCriterion ^slicing.rules = #open
* recommendation.dateCriterion contains nextDose ..1
* recommendation.dateCriterion[nextDose].code = $loinc#30980-7
* recommendation.dateCriterion[nextDose].value 1..1
* recommendation.doseNumberPositiveInt ^short = "Dose Number"
* recommendation.seriesDosesPositiveInt ^short = "Number of doses"
 */
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++