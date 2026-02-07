Profile: ConditionEuCore
Parent: Condition
Id: condition-eu-core
Title: "Condition (EU core)"
Description: """This profile introduce essential constraints and extensions for the Condition resource that apply across multiple use cases."""
// * insert ImposeProfile ( $Condition-uv-ips, 0 )  // Check if this is appropriate (see MS support)
// follow the same apporach of lab for collection or add laterality to the bodySite ?
* insert SetFmmandStatusRule (1, draft)
* extension contains $condition-assertedDate named assertedDate 0..1
* extension[assertedDate].valueDateTime ^short = "Date and time of the diagnosis assertion"
* extension contains $artifact-relatedArtifact named relatedArtifact 0..*
* extension[relatedArtifact] // reference to an external documet (e.g. a guideline for this condition)
* category ^short = "Category" // to be updated
* severity from $condition-severity (preferred)
* code 1..1 
* code from $problems-uv-ips (preferred) 
  * ^definition = "The problem code specifies the problem. Depending on the setting, different code systems can be used. The ProblemCodelist provides an overview of the possible code systems."
  * ^binding.description = "Valueset to describe the actual problem experienced by the patient"

  * ^binding.extension[+].extension[0].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = #candidate
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = "http://terminology.ehdsi.eu/ValueSet/eHDSIIllnessandDisorder"
  * ^binding.extension[=].extension[+].url = "documentation"
  * ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a problem code when ICD-10 or Orphanet codes are used."
  * ^binding.extension[=].extension[+].url = "shortDoco"
  * ^binding.extension[=].extension[=].valueString = "For cross border data exchange"
  * ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.description = "Valueset to describe the actual problem experienced by the patient"
* bodySite from SNOMEDCTBodyStructures (preferred)
  * extension contains $bodySite-reference named bodySite 0..1
  * extension[bodySite].valueReference only Reference(BodyStructureEuCore)  
* identifier ^definition = "Globally unique identifier of this problem which remain constant as the resource is updated and propagates from server to server."
* text ^definition = "Human readable specification of the problem. This is a general notes/comments entry for description of the problem, its diagnosis and prognosis."
* clinicalStatus from ConditionClinicalStatusCodes (required)
  * ^definition = "The problem status describes the condition of the problem:\n\r
1.	Active problems are problems of which the patient experiences symptoms or for which evidence exists.\n\r
2.	If condition is abated, then clinicalStatus must be either inactive, resolved, or remission. \n\r
3.	Problems with the status 'Inactive' refer to problems that don't affect the patient anymore or that of which there is no evidence of existence anymore."
* verificationStatus from ConditionVerificationStatus (required)
  * ^definition = "The verification status to support the clinical status of the condition."
* subject only Reference(PatientEuCore)
* onset[x] only dateTime or Age or Period or Range or string
* onsetDateTime ^definition = "Onset of the symptom, complaint, functional limitation, complication or date of diagnosis. A ‘vague’ date, such as only the year or the month and the year, is permitted."
* abatement[x] only dateTime or Age or Period or Range or string
* abatementDateTime ^definition = "The date or estimated date that the condition resolved or went into remission. A ‘vague’ date, such as only the year or the month and the year, is permitted"
* recorder only Reference (PractitionerRoleEu or PractitionerEu or PatientEuCore or RelatedPerson)
* recordedDate ^short = "Date when the condition record was created"
* stage ^short = "Stage/grade"
* stage.summary  ^short = "Most recent Stage Group"
* stage.assessment ^definition = "Reference to the evidence on which the staging assessment is based."
* stage.type ^short = "Staging system used."
* note ^definition = "Comment by the one who determined or updated the Problem."
