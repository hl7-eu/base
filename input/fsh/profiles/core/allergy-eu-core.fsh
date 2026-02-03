Profile: AllergyIntoleranceEuCore
Parent: AllergyIntolerance
Id: allergyIntolerance-eu-core
Title:    "Allergy Intolerance (EU core)"
Description: """This profile introduce essential constraints and extensions for the AllergyIntolerance resource that apply across multiple use cases."""
* insert SetFmmandStatusRule (1, draft)
// * insert ImposeProfile($AllergyIntolerance-uv-ips, 0)
* extension contains $allergyintolerance-abatement named abatement 0..1
* extension[abatement].valueDateTime ^short = "End date"
* verificationStatus ^short = "Certainty"
* clinicalStatus ^short = "Current allergy or Intolerance status"
* type ^short = "Type of propensity"
* code 1..1
* code from $allergy-intolerance-uv-ips (preferred)
  * ^binding.extension[+].extension[+].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = #candidate
//   * ^binding.extension[+].extension[+].url = "key"
//   * ^binding.extension[=].extension[=].valueId = "96948958-8a49-472e-91ee-967b8545d27c"
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = $eHDSIAllergenNoDrug // Canonical(AllergensHdrVS)
  * ^binding.extension[=].extension[+].url = "documentation"
  * ^binding.extension[=].extension[=].valueMarkdown = "Type of the substance/product for MyHealth@EU"
  * ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.description = "Type of the substance/product expected to be used in MyHealth@EU"

  * ^binding.extension[+].extension[+].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = #candidate
//   * ^binding.extension[+].extension[+].url = "key"
//   * ^binding.extension[=].extension[=].valueId = "7dea14b1-5620-41b8-bb24-536541cdee0b"
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/whoatc-uv-ips"
  * ^binding.extension[=].extension[+].url = "documentation"
  * ^binding.extension[=].extension[=].valueMarkdown = "Type of the substance/product, allergy or intolerance condition."
  * ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.description = "Type of the substance/product, allergy or intolerance condition or a code for absent/unknown allergy."
* criticality ^short = "Criticality"
* patient.reference 1..
* patient only Reference(PatientEuCore)
* onsetDateTime ^short = "Onset date"
* reaction.substance from $eHDSIAllergenNoDrug (example)
* reaction.manifestation from $allergy-reaction-uv-ips (preferred)
  * ^binding.extension[+].extension[+].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = #candidate
//   * ^binding.extension[+].extension[+].url = "key"
//   * ^binding.extension[=].extension[=].valueId = "b32b88b4-89d9-4744-b356-dff033c16f82"
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = $eHDSIReactionAllergy
  * ^binding.extension[=].extension[+].url = "documentation"
  * ^binding.extension[=].extension[=].valueMarkdown = "Type of reaction (MyHealth@EU)"
  * ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.description = "Type of allergy or intolerance reaction expected to be used in MyHealth@EU"
* reaction.severity ^short = "Reaction severity"
* reaction.onset ^short = "Reaction onset"