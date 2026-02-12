Profile: DiagnosticReportEuCore
Parent: DiagnosticReport
Id: diagnosticReport-eu-core
Title:    "DiagnosticReport (EU core)"
Description: """This profile introduces essential constraints and extensions for the DiagnosticReport resource that apply across multiple use cases."""
* insert SetFmmandStatusRule (1, draft)
* . ^short = "Diagnostic Report EU core"
* . ^definition = "Diagnostic Report EU core"
* extension contains $diagnostic-report-composition-r5 named DiagnosticReportCompositionR5 0..1
// is 1.. in Lab and Imaging report
* extension[DiagnosticReportCompositionR5]
  * ^short = "Associated  Composition"
  * ^definition = "This extension implements the R5 composition element. It allow to link this DiagnosticReport with the Composition documenting this Diagnostic Report."
  *  valueReference 1..1
  *  valueReference only Reference(CompositionEuCore)
* basedOn ^short = "What was requested"
* status ^short = "Status of the Report"
* identifier
  * ^comment = "Usually assigned by the Information System of the diagnostic service provider for facilitating the Report search. The order id can be used as one of the Report identifier if only one report is produced for that order."
* status
  * ^short = "Status of the Report"
  * ^comment = "DiagnosticReport.status and Composition.status shall be aligned"
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.note named note 0..*
* extension[note].valueAnnotation.extension contains $annotation-type named annotation-type 0..*
* extension[note].valueAnnotation.extension[annotation-type].valueCodeableConcept ^short = "Type of note"
* category insert SliceElement( #value, $this )
* category contains diagnostic-service 0..1 
// to be checked with the EU Core working group
* category[diagnostic-service] from $diagnostic-service-sections (required)
* code
  * ^short = "Type of Diagnostic Report"
  * ^definition = "Defines the document type, it is recommended to take this from the suggested LOINC set."
* subject 1..
* subject only Reference (PatientEuCore or PatientAnimalEuCore or Group or Location or Device)
  * ^short = "Who and/or what this report is about"
  * ^definition = "Who or what this report is about. The report can be about a human patient, a living subject, a device (e.g. a machine), a location or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure)."
* encounter only Reference (Encounter)
  * ^short = "The healthcare event which this Diagnostic Report is about (when test ordered)."
  * ^definition = """The healthcare event (e.g. a patient and healthcare provider interaction) which this DiagnosticReport is about."""
  * ^comment = """This will typically be the encounter the event occurred within, but some events may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter (e.g. pre-admission laboratory tests)."""
* effective[x] ^short = "Clinically relevant time/time-period for report."
* performer ^short = "Responsible Diagnostic Service." // add reference to the used profiles
* performer 
  * insert SliceElementWithDescription( #profile, $this, [[Organization that delivered the report]] )
  * ^comment = "If a DiagnosticReport.resultsInterpreter exists this is expected to be a Composition.author; otherwise a DiagnosticReport.performer should be an author."
* performer contains organization 0..*
* performer[organization] only Reference(OrganizationEuCore)
* performer[organization] ^short = "The organization producer of this report"
* performer[organization] ^definition = "The organization responsible for producing this report. In case practitioners produce them in their private practices, they will be accounted as an organization for this purpose."
* resultsInterpreter 0..*
  * insert SliceElementWithDescription( #profile, [[resolve()]], [[Primary interpreter of results]] )
  * ^comment = "If a DiagnosticReport.resultsInterpreter exists this is expected to be a Composition.author; otherwise a DiagnosticReport.performer should be an author."
* resultsInterpreter contains author 0..* 
* resultsInterpreter[author] only Reference(PractitionerRoleEuCore)
* specimen only Reference (Specimen)
  * ^short = "Specimens this report is based on."
* result only Reference (Observation)
  * ^short = "results"
* imagingStudy
  * ^short = "Study subject to this report"
* presentedForm ^short = "Entire report as issued (pdf recommended)"
* media
  * ^short = "Additional data (like images, diagrams or documents) associated with this report"
  * ^definition = "A list of additional data, other then presented form of the report, associated with this report. This data is generally created during the diagnostic process, and may be directly of the patient, or of treated specimens (i.e. slides of interest)."
  * ^requirements = "Some diagnostic reports may include additional data such as images, diagrams or documents that are relevant to the report. This additional information can provide further context and support for the findings presented in the report."
  * ^alias = "DICOM; Slides; Scans; Pictures; Documents; Diagrams"
  * comment
    * ^short = "Comment about the image or data (e.g. explanation)"
    * ^definition = "Allows for a comment about the image or data, such as an explanation of its significance or context within the diagnostic report."
    * ^requirements = "The provider of the report should make a comment about each image or data included in the report. This comment can provide valuable context and help the reader understand the significance of the image or data in relation to the overall findings of the report."
  * link
    * ^short = "Reference to the image or data"
    * ^definition = "A reference to the image or data associated with this report."