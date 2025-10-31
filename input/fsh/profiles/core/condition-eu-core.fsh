Profile: ConditionEuCore
Parent: Condition
Id: condition-eu-core
Title: "Condition (EU core) [WIP]"
Description: """This profile sets minimum expectations for the Condition resource common to most of the use cases."""
// * insert ImposeProfile ( $Condition-uv-ips, 0 )  // Check if this is appropriate (see MS support)
// follow the same apporach of lab for collection or add laterality to the bodySite ?
* extension contains $bodySite-reference named bodySite 0..1
* extension[bodySite].valueReference only Reference(BodyStructureEuCore)
* extension contains $condition-assertedDate named assertedDate 0..1
* extension[assertedDate].valueDateTime ^short = "Date and time of the diagnosis assertion"
* category only $CodeableConcept-uv-ips
* severity only $CodeableConcept-uv-ips
* severity from $condition-severity (preferred)
* code 1..1 
* code only $CodeableConcept-uv-ips
* code from $eHDSIIllnessandDisorder (preferred) // CHANGE value set 
  * ^definition = "The problem code specifies the problem. Depending on the setting, different code systems can be used. The ProblemCodelist provides an overview of the possible code systems."
  * ^binding.description = "Valueset to describe the actual problem experienced by the patient"
* bodySite only $CodeableConcept-uv-ips
* bodySite from SNOMEDCTBodyStructures (preferred)
* identifier ^definition = "Globally unique identifier of this problem which remain constant as the resource is updated and propagates from server to server."
* text ^definition = "Human readable specification of the problem. This is a general notes/comments entry for description of the problem, its diagnosis and prognosis."
* clinicalStatus only $CodeableConcept-uv-ips
* clinicalStatus from ConditionClinicalStatusCodes (required)
  * ^definition = "The problem status describes the condition of the problem:\n\r
1.	Active problems are problems of which the patient experiences symptoms or for which evidence exists.\n\r
2.	If condition is abated, then clinicalStatus must be either inactive, resolved, or remission. \n\r
3.	Problems with the status 'Inactive' refer to problems that don't affect the patient anymore or that of which there is no evidence of existence anymore."
* verificationStatus only $CodeableConcept-uv-ips
* verificationStatus from ConditionVerificationStatus (required)
  * ^definition = "The verification status to support the clinical status of the condition."
* subject only Reference(PatientEuCore)
* subject.reference 1..
* onset[x] only dateTime or Age or Period or Range or string
* onsetDateTime ^definition = "Onset of the symptom, complaint, functional limitation, complication or date of diagnosis. A ‘vague’ date, such as only the year or the month and the year, is permitted."
* abatement[x] only dateTime or Age or Period or Range or string
* abatementDateTime ^definition = "The date or estimated date that the condition resolved or went into remission. A ‘vague’ date, such as only the year or the month and the year, is permitted"
* stage ^short = "Stage/grade"
* stage.summary  ^short = "Most recent Stage Group"
* stage.assessment ^definition = "Reference to the evidence on which the staging assessment is based."
* stage.type ^short = "Staging system used."
* note ^definition = "Comment by the one who determined or updated the Problem."
