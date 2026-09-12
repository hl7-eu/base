// ImmunizationRecommendation for this guide, parked rather than abandoned.
// Commented out on 2025-10-29 in fdfdc03 alongside the R5 adaptation of Immunization.protocolApplied,
// without a ticket. It carries the same problem the commit solved next to it: doseNumberPositiveInt
// and seriesDosesPositiveInt in R4 became doseNumber and seriesDoses in R5, so reviving it needs the
// two elements in version branches.
// The HDR guide has ImmunizationRecommendationEuHdrObligation commented out in the same shape, and
// XpanDH PS profiles the resource on its own for want of something to derive from. See FHIR-51265.

/* 
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ImmunizationRecommendationEuCore
Parent:   ImmunizationRecommendation
Id:       immunizationRecommendation-eu-core
Title:    "ImmunizationRecommendation (EU core)"
Description: """This profile defines how to represent Immunization Recommendations for the purpose of this guide."""
//-------------------------------------------------------------------------------------------

* date ^short = "When recommendation was created"
* patient only Reference (PatientEuCore)
* recommendation
  * vaccineCode from http://hl7.org/fhir/uv/ips/ValueSet/vaccines-uv-ips (preferred)
  * vaccineCode ^binding.extension[+].extension[0].url = "purpose"
  * vaccineCode ^binding.extension[=].extension[=].valueCode = #preferred
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
