//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationEuCore
Parent:   Medication
Id:       medication-eu-core
Title:    "Medication (EU core)"
Description: """This profile introduces essential constraints and extensions for the Medication resource that apply across multiple use cases."""
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
* text ^short = "Human readable summary of the medication, for example, the name and form of the medication."
* code ^short = "Code of the medication"
* identifier ^short = "Identifier of the medication"
// Common R4 R5
* extension contains $ihe-ext-medication-productname named productName 0..1 // productName
* extension[productName] ^short = "Name of the medicinal product. Names of different types (full name, short name, etc) and in different languages can be provided if relevant." 
* extension contains $ihe-ext-medication-classification named classification 0..* // classification
* extension[classification] ^short = "Classifications of the product, e.g ATC, narcotic/psychotropic, orphan drug, etc"
* extension contains $ihe-ext-medication-sizeofitem named sizeOfItem 0..1 // item.containedQuantity
* extension[sizeOfItem] ^short = "Size of one item (for example, in a pack of 5 vials, this would represent the size of 1 vial)"
* extension contains $ihe-ext-medication-characteristic named characteristic 0..* // characteristic
* extension[characteristic] ^short = "Specifies other descriptive properties of the medication."
* extension contains $ihe-ext-medication-unitofpresentation named unitOfPresentation 0..1 // item.unitOfPresentation
* extension[unitOfPresentation] ^short = "Unit of presentation of the product (e.g. tablet, vial, ampoule, etc)"
* extension contains MedicationPackageType named packageType 0..1
* extension[packageType] ^short = "Type of container. This information is more relevant in cases when the packaging has an impact on administration of the product (e.g. pre-filled syringe)"
* batch
  * lotNumber ^short = "Lot Number"
  * expirationDate ^short = "Expiration Date"
* extension contains $ihe-ext-medication-device named device 0..* // device
* extension[device] ^short = "Device, typically an administration device, included in the product."
* extension[device].extension[device].valueCodeableConcept from $eHDSIPackage (example)

// Only R4 rules
* amount ^short = "Amount of the medication (for example, in a package or a vial)"

* ingredient
  * itemReference only Reference (MedicationEuCore)
  * itemCodeableConcept from $medicine-active-substances-uv-ips (example)
    * ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
    * ^binding.extension[=].extension[0].url = "purpose"
    * ^binding.extension[=].extension[=].valueCode = #candidate
    * ^binding.extension[=].extension[+].url = "valueSet"
    * ^binding.extension[=].extension[=].valueCanonical = $eHDSISubstance
    * ^binding.extension[=].extension[+].url = "documentation"
    * ^binding.extension[=].extension[=].valueMarkdown = "MyHealth@EU crossborder value set for substances. Based on EMA SPOR SMS."
  * strength ^short = "Amount of substance in product (presentation or concentration strength)"
  * strength ^definition = """Definitional resources should be used for specifying the different types of strengths: presentation; concentration."""
  * strength // MS // item.ingredient.strengthInfo (does not map exactly)
    * extension contains $ihe-ext-medication-strengthsubstance named basisOfStrengthSubstance 0..1 
    * extension[basisOfStrengthSubstance] ^short = "Substance for which the strength is provided (this could be different from the precise active ingredient)."
* form from $eHDSIDoseForm (example)
* manufacturer ^short = "Manufacturer"
