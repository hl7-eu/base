//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CoverageEhic
Parent:   Coverage
Id:       Coverage-eu-ehic
Title:    "Coverage: EHIC"
Description: "Coverage profile for the European Health Insurance Card"
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule ( 1, draft)
* identifier 1..1 // #8 card number
* identifier ^short = "EHIC#8 - Identification number of the card"
* identifier ^definition = "Logical number of the card"
* status 1..1 // 
* type 1..
* type = EuV3ActCode#EHIC "European Health Insurance Card"  // to be added
* beneficiary 1..1 // #3, 4 ,5, 6
* beneficiary ^short = "EHIC fields #3 to #6 (Name, Id, birthDate)"
* beneficiary only Reference(PatientEhic)
* period 1..1 
* period.end 1..1 // #9 - Expiry date
* period.end ^short = "EHIC#9 - Expiry date"
* period.end ^definition = "Expiry date of the card"
* payor	1..1
* payor only Reference(Organization)
* payor.display 1..1 // #7
* payor.display ^short = "EHIC#7 - Identification number of the institution"
* payor.display ^definition = "Identification number and acronym of the competent institution"
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile: PatientEhic
Parent: Patient
Id: Patient-eu-ehic
Title: "Patient (EHIC)"
Description: "This profile represents the constraints applied to the Patient resource when sed with the EHIC coverage profile."
* insert SetFmmandStatusRule ( 1, draft)
* identifier 1.. 
* identifier
  * system from VsEHICPersonalIdUri (extensible)
  * system 1..1
  * value 1..1
* name 1..*
* name.family 1..1 // #3
* name.family ^short = "EHIC#3 - Name"
* name.family ^definition = "Forename of the card holder"
* name.given 1.. // #4
* name.given ^short = "EHIC#4 - Given names"
* name.given ^definition = "Surname of the card holder"
* birthDate 1..1 // #5
* birthDate ^short = "EHIC#5 - Date of birth"
* birthDate ^definition = "Date of birth of the card holder"
