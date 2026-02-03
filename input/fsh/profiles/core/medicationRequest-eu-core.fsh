//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationRequestEuCore
Parent:   MedicationRequest
Id:       medicationRequest-eu-core
Title:    "MedicationRequest (EU core)"
Description: """This profile introduce essential constraints and extensions for the MedicationRequest resource that apply across multiple use cases."""
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
* identifier 
  * ^short = "Business identifier for this request"
* status ^short = "Current state of the order" 
* intent ^short = "Order, proposal or plan"
* subject only Reference( PatientEuCore or Group )
* authoredOn ^short = "Date when the request was authored"
* requester only Reference( PatientEuCore or PractitionerEuCore or PractitionerRoleEuCore or OrganizationEuCore or RelatedPerson )
  * ^short = "The individual responsible for ordering the medication"
* dosageInstruction ^short = "How the medication should be taken."
  * timing ^short = "Administration schedule"
    * repeat
      * duration ^short = "Duration of the treatment"
      * frequency ^short = "Frequency times per period"
      * period ^short = "Duration of time over which repetitions are to occur"
      * periodUnit  ^short = "Unit of the period (e.g. day)"
    * code ^short = "A code for the timing schedule."
  * route ^short = "Route of administration"
  * text ^short = "Free text dosage instructions"
  * doseAndRate.doseQuantity ^short = "Amount of medication per dose"
* dispenseRequest
  * extension contains $ihe-ext-medicationrequest-prescribedquantity named prescribedQuantity 0..1
  * extension[prescribedQuantity] ^short = "Overall amount of product prescribed, independent from the number of repeats."
  * extension[prescribedQuantity] ^definition = "When Medication resource implies a pack size, prescribedQuantity should convey number of packages. When the Medication does not imply an amount, overall amount could be in tablets or millilitres."
* medication[x] only CodeableConcept or Reference(MedicationEuCore)
* reasonCode ^short = "Reason or indication for this prescription"
  * ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.extension[0].extension[0].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = #candidate
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = $eHDSIIllnessandDisorder
  * ^binding.extension[=].extension[+].url = "documentation"
  * ^binding.extension[=].extension[=].valueMarkdown = """MyHealth@EU crossborder value set for diagnoses. Based on WHO ICD 10."""

* reasonReference ^short = "Condition or observation that supports this prescription"

* extension contains $medicationRequest-effectiveDosePeriod-r5 named effectiveDosePeriod 0..1
* extension[effectiveDosePeriod] ^short = "Period over which the medication should be taken."
* extension[effectiveDosePeriod] ^definition = "Period over which the medication should be taken. Where there are multiple dosageInstruction lines (for example, tapering doses), this is the earliest date and the latest end date of the dosageInstructions."

* extension contains $medicationrequest-rendereddosageinstruction-r5 named renderedDosageInstruction 0..1
* extension[renderedDosageInstruction] ^short = "Full representation of the dosage instructions"
