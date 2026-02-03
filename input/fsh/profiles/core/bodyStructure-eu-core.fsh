Profile: BodyStructureEuCore
Parent: BodyStructure
Id: bodyStructure-eu-core
Title: "BodyStructure (EU core)"
Description: """This profile introduce essential constraints and extensions for the BodyStructure resource that apply across multiple use cases."""
* insert SetFmmandStatusRule (2, trial-use)
* identifier ^short = "Body structure identifier"
* text ^short = "Textual description of the body structure"
* extension contains $bodyStructure-laterality-r5 named laterality 0..1
* extension[laterality].valueCodeableConcept from SiteLateralityEuVs (preferred)
* location from http://hl7.org/fhir/ValueSet/body-site (preferred)
* locationQualifier from SiteQualifierEuVs (preferred)
* morphology from http://hl7.org/fhir/ValueSet/bodystructure-code (preferred)
// * image 0..0