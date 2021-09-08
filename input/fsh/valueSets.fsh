//============== ALIAS ===============
Alias: URI = urn:ietf:rfc:3986
Alias: OID = urn:ietf:rfc:1155
Alias: CS_NullFlavor = http://terminology.hl7.org/CodeSystem/v3-NullFlavor
Alias: V3ActStatus = http://terminology.hl7.org/CodeSystem/v3-ActStatus
Alias: V3RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: CS_ISO3166 = urn:iso:std:iso:3166
Alias: EuV3ActCode = http://terminology.hl7.eu/CodeSystem/v3-ActCode

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
CodeSystem: CsEuV3ActCode
Id: v3-ActCode-EU
Title: "HL7 V3 ActCode - EU extensions"
Description: "European extensions to the V3 ActCode code system"
//-------------------------------------------------------------------------------------------
* #EHIC "European Health Insurance Card"



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsEHICPersonalIdUri
Id: uri-ehicPersonalId
Title: "EHIC Personal ID (system IDs - uri) "
Description: "System identifiers (uri) used for the EHIC#6 Personal Identification Number"
//-------------------------------------------------------------------------------------------
* URI#http://hl7.it/sid/codiceFiscale "Italian Fiscal Code"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsEHICPersonalIdOid
Id: oid-ehicPersonalId
Title: "EHIC Personal ID (system IDs - oid) "
Description: "System identifiers (oid) used for the EHIC#6 Personal Identification Number"
//-------------------------------------------------------------------------------------------
* OID#2.16.840.1.113883.2.9.4.3.2 "Italian Fiscal Code"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsEHICCountryCodes
Id: iso-ehicCountryCode
Title: "ISO 3166 - EHIC Country Codes"
Description: "ISO 3166 - Country Codes used by the European Healthcare Insurance Card"
//-------------------------------------------------------------------------------------------
* CS_ISO3166#AT "Austria"
* CS_ISO3166#BE "Belgium"
* CS_ISO3166#BG "Bulgaria"
* CS_ISO3166#HR "Croatia"
* CS_ISO3166#CY "Cyprus"
* CS_ISO3166#CZ "Czech Republic"
* CS_ISO3166#DK "Denmark"
* CS_ISO3166#EE "Estonia"
* CS_ISO3166#FI "Finland"
* CS_ISO3166#FR "France"
* CS_ISO3166#GR "Greece"
* CS_ISO3166#DE "Germany"
* CS_ISO3166#HU "Hungary"
* CS_ISO3166#IE "Ireland"
* CS_ISO3166#IT "Italy" 
* CS_ISO3166#LV "Latvia"
* CS_ISO3166#LT "Lithuania" 
* CS_ISO3166#LU "Luxembourg" 
* CS_ISO3166#MT "Malta" 
* CS_ISO3166#NL "Netherlands"
* CS_ISO3166#PL "Poland"
* CS_ISO3166#PT "Portugal" 
* CS_ISO3166#RO "Romania"
* CS_ISO3166#SK "Slovakia" 
* CS_ISO3166#SI "Slovenia"
* CS_ISO3166#ES "Spain" 
* CS_ISO3166#SE "Sweden"
* CS_ISO3166#IS "Iceland"
* CS_ISO3166#LI "Liechtenstein"
* CS_ISO3166#NO "Norway"
* CS_ISO3166#CH "Switzerland"
* CS_ISO3166#UK "United Kingdom"
