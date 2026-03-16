Instance: BodyStructureExample
InstanceOf: BodyStructureEuCore
Title: "BodyStructure Example"
Description: "Example of a BodyStructure resource conforming to the BodyStructure (EU) profile."
* id = "example-body-structure-eu"
* extension[laterality].valueCodeableConcept = $sct#7771000	"Left"
* location = $sct#8205005 "Wrist"
* locationQualifier = $sct#351726001 "Below"
* patient = Reference(PatientExample)
* morphology =  $sct#339008 "Blister"
