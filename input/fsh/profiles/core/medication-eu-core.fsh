//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationEuCore
Parent:   Medication
Id:       medication-eu-core
Title:    "Medication (EU core) [WIP]"
Description: """This profile sets minimum expectations for the Medication resource common to most of the use cases.
This profile is adapted from the MPD work."""
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
// Only R4 rules
* ingredient
  * itemCodeableConcept from $eHDSISubstance (example)
  * itemReference only Reference (MedicationEuCore)
  * strength ^short = "Amount of substance in product (presentation or concentration strength)"
  * strength ^definition = """Definitional resources should be used for specifying the different types of strengths: presentation; concentration."""
  * strength  // item.ingredient.strengthInfo (does not map exactly)  
    * extension contains $ihe-ext-medication-strengthsubstance named strengthSubstance 0..1 
    * extension[strengthSubstance] ^short = "Substance for which the strength is provided (this could be different from the precise active ingredient)." 
// Common R4 R5
* extension contains $ihe-ext-medication-productname named productName 0..1 // productName
* extension[productName] ^short = "Name of the medicinal product. Names of different types (full name, short name, etc) and in different languages can be provided if relevant." 
* extension contains $ihe-ext-medication-classification named classification 0..* // classification
* extension[classification] ^short = "Classifications of the product, e.g ATC, narcotic/psychotropic, orphan drug, etc"
* extension contains $ihe-ext-medication-sizeofitem named sizeOfItem 0..1 // item.containedQuantity
* extension[sizeOfItem] ^short = "Size of one item (for example, in a pack of 5 vials, this would represent the size of 1 vial)"
* extension contains $ihe-ext-medication-device named device 0..* // device
* extension[device] ^short = "Device, typically an administration device, included in the product."
* extension contains $ihe-ext-medication-characteristic named characteristic 0..* // characteristic
* extension[characteristic] ^short = "Specifies other descriptive properties of the medication."
* extension contains $ihe-ext-medication-unitofpresentation named unitOfPresentation 0..1 // item.unitOfPresentation
* extension[unitOfPresentation] ^short = "Unit of presentation of the product (e.g. tablet, vial, ampoule, etc)"
* identifier
  * ^short = "Identifier for the medicinal product, its generic representation, or packaged product." //identifier
* code 
  * ^short = "A terminology-based code for the product" // productCode
* ingredient 
  * ^short = "Ingredient or a part product. For combination packs, each ingredient can be a separate manufactured item with its own ingredients, dose form, and strength" // item
  * isActive ^short = "Active ingredient flag" // item.ingredient.role
* form ^short = "Dose Form"
* form from $eHDSIDoseForm (example)
  * ^short = "Dose form. For a branded product, this would most likely be authorised dose form, but it could also be administrable dose form. For package items, it could be item's individual dose form." // doseForm
