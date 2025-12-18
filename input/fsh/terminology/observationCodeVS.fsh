Alias: $lab-obsCode-npu-eu-lab = http://hl7.eu/fhir/laboratory/ValueSet/lab-obsCode-npu-eu-lab
Alias: $lab-obsCode-loinc-eu-lab = http://hl7.eu/fhir/laboratory/ValueSet/lab-obsCode-loinc-eu-lab
Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
ValueSet: LaboratoryResultStandardEuVs
Id: lab-obsCode-eu-lab
Title: "Laboratory Code"
Description: "Laboratory observation codes. List of Laboratory observation codes containing LOINC and NPU."
* insert LoincNPUCopyrightForVS
* include codes from system $loinc
* include codes from system $npu