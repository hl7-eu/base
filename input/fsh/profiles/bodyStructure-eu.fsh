Profile: BodyStructureEu
Parent: BodyStructure
Id: BodyStructure-eu
Title: "Body structure (EU base)"
Description: "This profile specifies how the HL7 FHIR BodyStructure resource should be used for conveying commonly used concepts in the European context."
* extension contains $bodyStructure-laterality-r5 named laterality 0..1
* extension[laterality].valueCodeableConcept from SiteLateralityEuVs (preferred)
* morphology from http://hl7.org/fhir/ValueSet/bodystructure-code (preferred)
* location from http://hl7.org/fhir/ValueSet/body-site (preferred)
* locationQualifier from SiteQualifierEuVs (preferred)
* image 0..0