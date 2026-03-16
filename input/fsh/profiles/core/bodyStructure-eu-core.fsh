Profile: BodyStructureEuCore
Parent: BodyStructure
Id: bodyStructure-eu-core
Title: "BodyStructure (EU core)"
Description: """This profile introduces essential constraints and extensions for the BodyStructure resource that apply across multiple use cases."""
* insert SetFmmandStatusRule (2, trial-use)
* identifier ^short = "Body structure identifier"
* text ^short = "Textual description of the body structure"
* extension contains $bodyStructure-includedStructure-r5 named includedStructure 0..*
* extension[includedStructure].extension[laterality].valueCodeableConcept from SiteLateralityEuVs (preferred)
* extension[includedStructure].extension[structure].valueCodeableConcept from http://hl7.org/fhir/ValueSet/body-site (preferred)
* extension[includedStructure].extension[qualifier].valueCodeableConcept from SiteQualifierEuVs (preferred)
* location 0..0
* locationQualifier 0..0
* morphology from http://hl7.org/fhir/ValueSet/bodystructure-code (preferred)
// * image 0..0