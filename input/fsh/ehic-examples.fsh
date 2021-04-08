//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Instance: EhicExampleIt
InstanceOf: CoverageEhic
Description: "Example of Italian EHIC (Tessera TEAM)"
* identifier.system = "http://toBeDefined.org/ehic"
* identifier.value = "80380000900090510553"
* status = 	http://hl7.org/fhir/ValueSet/fm-status#active
// * type = COV_TYP#PUBLICPOL
* beneficiary = Reference(Patient/esempio-CF-residenza)
* period.end = 2022-01-19
* payor = Reference(Organization/example-rt)
* payor.display = "SSN-MIN SALUTE - 500001"
