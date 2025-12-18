Instance: FlagEuCoreExample
InstanceOf: FlagEuCore
Title: "Flag Example"
Description: "Example of a Flag resource conforming to the Flag (EU Core) profile."
* id = "flag-eu-core-example"
* status = #active
* category = http://terminology.hl7.org/CodeSystem/flag-category#safety "Safety"
* code = $sct#129839007 "At risk of falls"
* subject = Reference(PatientExample)
* period.start = "2024-01-10"
