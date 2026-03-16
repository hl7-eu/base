Invariant: eu-bodysite-1
Description: "Either a body site code or a reference to a BodyStructure resource SHALL be used, but not both."
Severity: #error
Expression: "(coding.exists() or text.exists()).not() or extension('http://hl7.org/fhir/StructureDefinition/bodySite').exists().not()"