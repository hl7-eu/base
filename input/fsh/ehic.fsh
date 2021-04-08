Instance: EHIC
InstanceOf: StructureDefinition
Description: "A free card that gives access to medically necessary, state-provided healthcare during a temporary stay in any of the 27 EU countries, Iceland, Liechtenstein, Norway and Switzerland under the same conditions and at the same cost (free in some countries) as people insured in that country. The benefits covered include, for example, benefits provided in conjunction with chronic or existing illnesses as well as in conjunction with pregnancy and childbirth.
Cards are issued by your national health insurance provider.
Important – the European Health Insurance Card:
* is not an alternative to travel insurance. It does not cover any private healthcare or costs such as a return flight to your home country or lost/stolen property,
* does not cover your costs if you are travelling for the express purpose of obtaining medical treatment,
* does not guarantee free services. As each country’s healthcare system is different services that cost nothing at home might not be free in another country."
Title: "European Health Insurance Card"
Usage: #definition

* publisher = "HL7 Europe"
* status = #draft
* url = "http://hl7.eu/fhir/ig/base/StructureDefinition/EHIC"
* name = "EHIC"
* title = "European Health Insurance Card"
* status = #draft
* experimental = true
* description = "A free card that gives access to medically necessary, state-provided healthcare during a temporary stay in any of the 27 EU countries, Iceland, Liechtenstein, Norway and Switzerland under the same conditions and at the same cost (free in some countries) as people insured in that country. The benefits covered include, for example, benefits provided in conjunction with chronic or existing illnesses as well as in conjunction with pregnancy and childbirth.
Cards are issued by your national health insurance provider.
Important – the European Health Insurance Card:
* is not an alternative to travel insurance. It does not cover any private healthcare or costs such as a return flight to your home country or lost/stolen property,
* does not cover your costs if you are travelling for the express purpose of obtaining medical treatment,
* does not guarantee free services. As each country’s healthcare system is different services that cost nothing at home might not be free in another country."
* version = "0.0.1"
* kind = #logical
* abstract = false
* type = "EHIC"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization

* differential.element[0].id = "EHIC"
* differential.element[0].path = "EHIC"
* differential.element[0].short = "European Health Insurance Card"
* differential.element[0].definition = "European Health Insurance Card"
* differential.element[0].min = 1
* differential.element[0].max = "1"

* differential.element[1].id = "EHIC.country"
* differential.element[1].path = "EHIC.country"
* differential.element[1].short = "Country Code"
* differential.element[1].definition = "Code of the Member State issuing the card"
* differential.element[1].min = 1
* differential.element[1].max = "1"
* differential.element[1].type.code = #code
* differential.element[2].id = "EHIC.name"
* differential.element[2].path = "EHIC.name"
* differential.element[2].short = "3 - Name"
* differential.element[2].definition = "Forename of the card holder"
* differential.element[2].min = 1
* differential.element[2].max = "1"
* differential.element[2].type.code = #string
* differential.element[3].id = "EHIC.givenName"
* differential.element[3].path = "EHIC.givenName"
* differential.element[3].short = "4 - Given names"
* differential.element[3].definition = "Surname of the card holder"
* differential.element[3].min = 1
* differential.element[3].max = "1"
* differential.element[3].type.code = #string
* differential.element[4].id = "EHIC.birthDate"
* differential.element[4].path = "EHIC.birthDate"
* differential.element[4].short = "5 - Date of birth"
* differential.element[4].definition = "Date of birth of the card holder"
* differential.element[4].min = 1
* differential.element[4].max = "1"
* differential.element[4].type.code = #dateTime
* differential.element[5].id = "EHIC.personalId"
* differential.element[5].path = "EHIC.personalId"
* differential.element[5].short = "6 - Personal identification number"
* differential.element[5].definition = "Personal identification number of the card holder or, when no such number exists, the number of the insured person from whom the rights of the card holder derive,"
* differential.element[5].min = 1
* differential.element[5].max = "1"
* differential.element[5].type.code = #string
* differential.element[6].id = "EHIC.istitutionId"
* differential.element[6].path = "EHIC.istitutionId"
* differential.element[6].short = "7 - Identification number of the institution"
* differential.element[6].definition = "Identification number and acronym of the competent institution"
* differential.element[6].min = 1
* differential.element[6].max = "1"
* differential.element[6].type.code = #string
* differential.element[7].id = "EHIC.cardNumber"
* differential.element[7].path = "EHIC.cardNumber"
* differential.element[7].short = "8 - Identification number of the card "
* differential.element[7].definition = "Logical number of the card."
* differential.element[7].min = 1
* differential.element[7].max = "1"
* differential.element[7].type.code = #string
* differential.element[8].id = "EHIC.expiryDate"
* differential.element[8].path = "EHIC.expiryDate"
* differential.element[8].short = "9 - expiry date"
* differential.element[8].definition = "Expiry date of the card"
* differential.element[8].min = 1
* differential.element[8].max = "1"
* differential.element[8].type.code = #dateTime
