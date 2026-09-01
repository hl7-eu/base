Instance: BodyStructureExample
InstanceOf: BodyStructureEuCore
Title: "BodyStructure Example"
Description: "Example of a BodyStructure resource conforming to the BodyStructure (EU) profile."
* id = "example-body-structure-eu"


* extension[includedStructure].extension[structure].valueCodeableConcept = $sct#8205005 "Wrist"
* extension[includedStructure].extension[laterality].valueCodeableConcept = $sct#7771000 "Left"
* extension[includedStructure].extension[qualifier].valueCodeableConcept = $sct#351726001 "Below"



* patient = Reference(PatientExample)
* morphology =  $sct#339008 "Blister"

Instance: BodyStructureMultipleIncludedStructuresExample
InstanceOf: BodyStructureEuCore
Title: "BodyStructure Example: multiple included structures"
Description: "Example of a BodyStructure resource describing a lesion that extends over more than one anatomic location, using several site qualifiers and a business identifier."
* id = "example-body-structure-eu-multiple"
* identifier.system = "http://example.org/body-structures"
* identifier.value = "BS-0000042"


* extension[includedStructure][0].extension[structure].valueCodeableConcept = $sct#8205005 "Wrist"
* extension[includedStructure][=].extension[laterality].valueCodeableConcept = $sct#7771000 "Left"
* extension[includedStructure][=].extension[qualifier][0].valueCodeableConcept = $sct#255554000 "Dorsal"
* extension[includedStructure][=].extension[qualifier][+].valueCodeableConcept = $sct#40415009 "Proximal"
* extension[includedStructure][+].extension[structure].valueCodeableConcept = $sct#14975008 "Forearm"
* extension[includedStructure][=].extension[laterality].valueCodeableConcept = $sct#7771000 "Left"
* extension[includedStructure][=].extension[qualifier].valueCodeableConcept = $sct#46053002 "Distal"



* patient = Reference(PatientExample)
* morphology = $sct#339008 "Blister"
