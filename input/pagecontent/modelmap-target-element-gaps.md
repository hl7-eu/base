# Model Map Target Element Coverage Check

Compared mapping-table target elements against explicitly mentioned element paths in target FSH profiles.
`Gap` means not explicitly mentioned in the target profile FSH file; the element may still exist by inheritance from the parent datatype/resource.

- Maps checked against local FSH profiles: 17
- Total missing element mentions found: 84
- Likely real/profile gaps: 24
- Likely inherited/base-element omissions: 60
- Maps skipped: 3

## map-ehdsaddress.xml

- Map file: `input\pagecontent\map-ehdsaddress.xml`
- Target href: `StructureDefinition-Address-eu.html`
- Target profile FSH: `input\fsh\profiles\address-eu.fsh`
- Unique mapped target elements checked: 10
- Total missing in target FSH (explicit mention check): 1
- Likely real/profile gaps: 0
- Likely inherited/base-element omissions (informational): 1

### Informational (Likely Inherited)
- `text`

## map-ehdsalert.xml

- Map file: `input\pagecontent\map-ehdsalert.xml`
- Target href: `StructureDefinition-flag-patient-eu-core.html`
- Target profile FSH: `input\fsh\profiles\core\flag-eu-core.fsh`
- Unique mapped target elements checked: 11
- Total missing in target FSH (explicit mention check): 3
- Likely real/profile gaps: 1
- Likely inherited/base-element omissions (informational): 2

### Likely Real/Profile Gaps
- `extensions:note.text` done

### Informational (Likely Inherited)
- `author` done 
- `language` done

## map-ehdsallergyintolerance.xml

- Map file: `input\pagecontent\map-ehdsallergyintolerance.xml`
- Target href: `StructureDefinition-allergyIntolerance-eu-core.html`
- Target profile FSH: `input\fsh\profiles\core\allergy-eu-core.fsh`
- Unique mapped target elements checked: 19
- Total missing in target FSH (explicit mention check): 8
- Likely real/profile gaps: 0
- Likely inherited/base-element omissions (informational): 8

### Informational (Likely Inherited) (A) DONE
- `asserter`
- `identifier`
- `language`
- `note.text`
- `onset[x]`
- `recordedDate`
- `recorder`
- `subject`

## map-ehdsbodystructure.xml

- Map file: `input\pagecontent\map-ehdsbodystructure.xml`
- Target href: `StructureDefinition-bodyStructure-eu-core.html`
- Target profile FSH: `input\fsh\profiles\core\bodyStructure-eu-core.fsh`
- Unique mapped target elements checked: 8
- Total missing in target FSH (explicit mention check): 0
- Likely real/profile gaps: 0
- Likely inherited/base-element omissions (informational): 0

## map-ehdscondition.xml

- Map file: `input\pagecontent\map-ehdscondition.xml`
- Target href: `StructureDefinition-condition-eu-core.html`
- Target profile FSH: `input\fsh\profiles\core\condition-eu-core.fsh`
- Unique mapped target elements checked: 20
- Total missing in target FSH (explicit mention check): 2
- Likely real/profile gaps: 0
- Likely inherited/base-element omissions (informational): 2

### Informational (Likely Inherited) DONE
- `asserter`
- `language`

## map-ehdsdocument.xml

- Map file: `input\pagecontent\map-ehdsdocument.xml`
- Target href: `StructureDefinition-composition-eu-core.html`
- Target profile FSH: `input\fsh\profiles\core\composition-eu-core.fsh`
- Unique mapped target elements checked: 18
- Total missing in target FSH (explicit mention check): 4
- Likely real/profile gaps: 0
- Likely inherited/base-element omissions (informational): 4

### Informational (Likely Inherited) DONE
- `event.code`
- `event.period`
- `language`
- `version`

## map-ehdsdocument-report.xml

- Map file: `input\pagecontent\map-ehdsdocument-report.xml`
- Target href: `StructureDefinition-diagnosticReport-eu-core.html`
- Target profile FSH: `input\fsh\profiles\core\diagnosticReport-eu-core.fsh`
- Unique mapped target elements checked: 11
- Total missing in target FSH (explicit mention check): 3
- Likely real/profile gaps: 0
- Likely inherited/base-element omissions (informational): 3

### Informational (Likely Inherited) DONE
- `effectivePeriod`
- `issued`
- `language`

## map-ehdsimmunisation.xml

- Map file: `input\pagecontent\map-ehdsimmunisation.xml`
- Target href: `StructureDefinition-immunization-eu-core.html`
- Target profile FSH: `input\fsh\profiles\core\immunization-eu-core.fsh`
- Unique mapped target elements checked: 14
- Total missing in target FSH (explicit mention check): 5
- Likely real/profile gaps: 1
- Likely inherited/base-element omissions (informational): 4

### Likely Real/Profile Gaps
- `performer:administeringCentreOrHp.actor`

### Informational (Likely Inherited) DONE
- `administeredProduct`
- `identifier`
- `language`
- `note.text`

## map-ehdslocation.xml

- Map file: `input\pagecontent\map-ehdslocation.xml`
- Target href: `StructureDefinition-location-eu-core.html`
- Target profile FSH: `input\fsh\profiles\core\location-eu-core.fsh`
- Unique mapped target elements checked: 8
- Total missing in target FSH (explicit mention check): 1
- Likely real/profile gaps: 0
- Likely inherited/base-element omissions (informational): 1

### Informational (Likely Inherited) DONE
- `description`

## map-ehdsmedication.xml

- Map file: `input\pagecontent\map-ehdsmedication.xml`
- Target href: `StructureDefinition-medication-eu-core.html`
- Target profile FSH: `input\fsh\profiles\core\medication-eu-core.fsh`
- Unique mapped target elements checked: 31
- Total missing in target FSH (explicit mention check): 11
- Likely real/profile gaps: 6
- Likely inherited/base-element omissions (informational): 5

### Likely Real/Profile Gaps
- `extension:characteristic.extension:type`
- `extension:characteristic.extension:value`
- `extension:device.extension:device.value[x]`
- `extension:device.extension:quantity`
- `ingredient.isActive`
- `ingredient.strengthRatio`

### Informational (Likely Inherited)
- `amount`
- `code`
- `identifier`
- `name`
- `text`

## map-ehdsmedicationprescription.xml

- Map file: `input\pagecontent\map-ehdsmedicationprescription.xml`
- Target href: `StructureDefinition-medicationRequest-eu-core.html`
- Target profile FSH: `input\fsh\profiles\core\medicationRequest-eu-core.fsh`
- Unique mapped target elements checked: 30
- Total missing in target FSH (explicit mention check): 16
- Likely real/profile gaps: 7
- Likely inherited/base-element omissions (informational): 9

### Likely Real/Profile Gaps
- `dispenseRequest.dispenseInterval`
- `dispenseRequest.numberOfRepeatsAllowed`
- `dispenseRequest.validityPeriod`
- `extension:offLabelUse`
- `extension:offLabelUse.reason`
- `substitution.allowed[x]]`
- `substitution.reason`

### Informational (Likely Inherited)
- `category`
- `effectiveDosePeriod`
- `groupIdentifier`
- `language`
- `note.text`
- `reason.concept`
- `reason.reference`
- `statusReason`
- `substitution`

## map-ehdsmedicationstatement.xml DONE

- Map file: `input\pagecontent\map-ehdsmedicationstatement.xml`
- Target href: `StructureDefinition-medicationStatement-eu-core.html`
- Target profile FSH: `input\fsh\profiles\core\medicationStatement-eu-core.fsh`
- Unique mapped target elements checked: 16
- Total missing in target FSH (explicit mention check): 4
- Likely real/profile gaps: 1
- Likely inherited/base-element omissions (informational): 3

### Likely Real/Profile Gaps
- `extension:adherence.code`

### Informational (Likely Inherited)
- `derivedFrom`
- `language`
- `note.text`

## map-ehdsobservation.xml

- Map file: `input\pagecontent\map-ehdsobservation.xml`
- Target href: `StructureDefinition-medicalTestResult-eu-core.html`
- Target profile FSH: `input\fsh\profiles\core\medical-test-result-eu-core.fsh`
- Unique mapped target elements checked: 33
- Total missing in target FSH (explicit mention check): 5
- Likely real/profile gaps: 3
- Likely inherited/base-element omissions (informational): 2

### Likely Real/Profile Gaps
- `-`
- `component.result.dataAbsentReason`
- `result.dataAbsentReason`

### Informational (Likely Inherited) DONE
- `language`
- `specimen`

## map-ehdsorganisation.xml

- Map file: `input\pagecontent\map-ehdsorganisation.xml`
- Target href: `StructureDefinition-organization-eu-core.html`
- Target profile FSH: `input\fsh\profiles\core\organization-eu-core.fsh`
- Unique mapped target elements checked: 8
- Total missing in target FSH (explicit mention check): 6
- Likely real/profile gaps: 2
- Likely inherited/base-element omissions (informational): 4

### Likely Real/Profile Gaps
- `contact.address`
- `contact.telecom`

### Informational (Likely Inherited)
- `address`
- `identifier`
- `telecom`
- `type`

## map-ehdspatient.xml

- Map file: `input\pagecontent\map-ehdspatient.xml`
- Target href: `StructureDefinition-patient-eu-core.html`
- Target profile FSH: `input\fsh\profiles\core\patient-eu-core.fsh`
- Unique mapped target elements checked: 6
- Total missing in target FSH (explicit mention check): 4
- Likely real/profile gaps: 0
- Likely inherited/base-element omissions (informational): 4

### Informational (Likely Inherited)
- `address`
- `gender`
- `identifier`
- `telecom`

## map-ehdspatientanimal.xml

- Map file: `input\pagecontent\map-ehdspatientanimal.xml`
- Target href: `StructureDefinition-patient-animal-eu-core.html`
- Target profile FSH: `input\fsh\profiles\core\patient-animal-eu-core.fsh`
- Unique mapped target elements checked: 9
- Total missing in target FSH (explicit mention check): 7
- Likely real/profile gaps: 3
- Likely inherited/base-element omissions (informational): 4

### Likely Real/Profile Gaps
- `extension:patient-animal.extension:breed`
- `extension:patient-animal.extension:genderStatus`
- `extension:patient-animal.extension:species`

### Informational (Likely Inherited)
- `address`
- `birthDate`
- `gender`
- `name`

## map-ehdsprocedure.xml

- Map file: `input\pagecontent\map-ehdsprocedure.xml`
- Target href: `StructureDefinition-procedure-eu-core.html`
- Target profile FSH: `input\fsh\profiles\core\procedure-eu-core.fsh`
- Unique mapped target elements checked: 22
- Total missing in target FSH (explicit mention check): 4
- Likely real/profile gaps: 0
- Likely inherited/base-element omissions (informational): 4

### Informational (Likely Inherited)
- `asserter`
- `language`
- `recorded`
- `recorder`

## Skipped Maps

- map-ehdshealthprofessional.xml (target Id 'practitionerRole-eu-core' has no local FSH profile)
- map-ehdshumanname.xml (no local StructureDefinition target href found)
- map-ehdstelecom.xml (no local StructureDefinition target href found)

