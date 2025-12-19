//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile: MedicalTestResultEuCore
Parent: Observation
Id: medicalTestResult-eu-core
Title: "MedicalTestResult (EU core)"
Description: """This profile sets minimum expectations for the Observation resource for Medical Test Results common to most of the use cases."""
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
* extension contains 
    $observation-bodyStructure-r5 named bodyStructure 0..1 and
    $observation-triggeredBy-r5 named triggeredBy 0..* and
    $observation-value-r5 named value-r5 0..1
* extension[bodyStructure]
  * ^requirements = "EHDSObservation.anatomicLocation"
* extension[triggeredBy].extension[observation].valueReference only Reference(MedicalTestResultEuCore)
  * ^requirements = "EHDSObservation.triggeredBy[x]"
* extension[value-r5]
  * value[x] only Attachment
  * ^short = "only for result of type Attachment"
* identifier
  * ^requirements = "EHDSObservation.header.identifier"
* basedOn
  * ^requirements = "EHDSObservation.order"
* status
  * ^requirements = "EHDSObservation.header.status"
* category 1..
  * insert SliceElement( #value, $this )
  * ^requirements = "EHDSObservation has no requirement"
* category contains 
    laboratory 0..1 and
    vital-signs 0..1
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* category[vital-signs] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code from LaboratoryResultStandardEuVs (preferred)
  * ^requirements = "EHDSObservation.code"
* subject 1.. 
* subject only Reference(PatientEuCore)
  * ^requirements = "EHDSObservation.header.subject"
* focus only Reference(PatientEuCore or RelatedPerson or Group or Device or LocationEuCore)
  * ^requirements = "EHDSObservation.directSubject[x]"
* effective[x] 1..
* effective[x] only dateTime or Period
  * ^requirements = "EHDSObservation.observationDate[x]"
* issued
  * ^requirements = "EHDSObservation.header.authorship.datetime"
* performer only Reference(PractitionerEuCore or PractitionerRoleEuCore or OrganizationEuCore)
  * ^requirements = "EHDSObservation.header.performer"
//TODO: Cardinality in Model is 1..1, datatypes in xt-ehr model only valueString, valueQuantity, valueRange, valueCodeableConcept
// TODO: add valueAttachment in R4
* value[x]
  * ^requirements = "EHDSObservation.result.value[x]"
// TODO: is uncertainty a modifierExtension? Also relevant for Ratio, Range, integer
// TODO: ask for scope change on extension
* valueQuantity
  * extension contains 
    $iso21090-uncertainty named uncertainty 0..1
  * extension[uncertainty]
    * ^requirements = "EHDSObservation.result.uncertainty"
* dataAbsentReason
  * ^requirements = "EHDSObservation.dataAbsentReason"
* interpretation
  * ^requirements = "EHDSObservation.interpretation"
* note
  * ^requirements = "EHDSObservation.resultDescription"
* bodySite
  * ^requirements = "EHDSObservation.anatomicLocation"
* method
  * ^requirements = "EHDSObservation.method"
//TODO: specimen is not part of the EHDSObservation model but needed for lab observations
* device only Reference(Device or DeviceMetric)
  * ^requirements = "Device information for laboratory observations"
* referenceRange
  * ^requirements = "EHDSObservation.referenceRange"
* hasMember only Reference(MedicalTestResultEuCore)
  * ^requirements = "EHDSObservation.hasMember[x]"
* derivedFrom only Reference(MedicalTestResultEuCore or ImagingStudy)
  * ^requirements = "EHDSObservation.derivedFrom[x]"
* component
  * ^requirements = "EHDSObservation.component"
  * code from LaboratoryResultStandardEuVs (preferred)
    * ^requirements = "EHDSObservation.component.code"
//TODO: datatypes in xt-ehr model only valueString, valueQuantity, valueRange, valueCodeableConcept
  * value[x]
    * ^requirements = "EHDSObservation.component.result.value[x]"
  * valueQuantity
    * extension contains 
      $iso21090-uncertainty named uncertainty 0..1
    * extension[uncertainty]
      * ^requirements = "EHDSObservation.component.result.uncertainty"
  * dataAbsentReason
    * ^requirements = "EHDSObservation.component.dataAbsentReason"
  * referenceRange
    * ^requirements = "EHDSObservation.component.referenceRange"
  * interpretation
    * ^requirements = "EHDSObservation.component.interpretation"