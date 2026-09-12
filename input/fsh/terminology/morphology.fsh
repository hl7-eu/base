ValueSet:      MorphologyEuVs
Id:            morphology-eu
Title:         "Body Structure Morphology"
Description:   "Morphology of a body structure, that is the kind of abnormality it shows. (based on SNOMED CT)"
* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule (2, trial-use)

// The FHIR value set bound to BodyStructure.morphology, SNOMEDCTMorphologicAbnormalities,
// is based on < 49755003 |Abnormal tissue appearance|. SNOMED CT recommended the wider
// < 118956008 in its feedback on Xt-EHR D7.1, see FHIR-56527.
* include codes from system $sct where concept is-a #118956008
