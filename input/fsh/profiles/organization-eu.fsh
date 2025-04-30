Profile: OrganizationEu
Parent: Organization
Id: organization-eu
Title: "Organization (EU base)"
Description: "This profile specifies how the HL7 FHIR Organization resource should be used for conveying commonly used concepts in the European context."
* insert SetFmmandStatusRule (2, draft)
* . obeys name-or-identier
* type ^short = "Organization type"
// should name be 1.. as in the IPS ?
* name ^short = "Name of the organization"
* telecom ^short = "Organization telecom"
* address only AddressEu
* partOf ^short = "The organization of which this organization is part of: e.g. an ERN"
* partOf only Reference (OrganizationEu)
* contact ^short = "Organization contact infos"
Invariant: name-or-identier
Description: "identifier or name SHALL be present"
Severity: #error
Expression: "identifier.exists() or name.exists()"