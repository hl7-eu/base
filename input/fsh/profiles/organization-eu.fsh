Profile: OrganizationEu
Parent: Organization
Id: organization-eu
Title: "Organization (EU)"
Description: "This profile sets minimum expectations for the Organization resource to searching for and fetching an Organization associated with a patient or provider for the purpose of this guide."
* insert SetFmmandStatusRule (1, draft)
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
Expression: ".identifier.exists() or name.exists()"