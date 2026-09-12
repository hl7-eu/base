ValueSet: MedicalTestResultCodeEuVs
Id: medicalTestResult-eu
Title: "Medical Test Result Code"
Description: "Medical test result codes. List of Medical test result codes containing LOINC and NPU."

* insert LoincSnomedCopyrightForVS

* ^status = #active
* ^experimental = false

* include codes from system $loinc
* include codes from system $sct  where concept is-a #363787002