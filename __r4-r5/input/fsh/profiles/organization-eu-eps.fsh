Profile: OrganizationEuEps
Parent: Organization // http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips
Id: organization-eu-eps
Title: "Organization (EU PS)"
Description: "This profile sets minimum expectations for the Organization resource to searching for and fetching an Organization associated with a patient or provider for the purpose of this guide."

* insert SetFmmandStatusRule (1, draft)

* type ^short = "Organization type"
[r4-init]
* telecom ^short = "Organization telecom"
* address only AddressEu
[r4-end]
[r5-init]
* contact.telecom ^short = "Organization telecom"
* contact.address only AddressEu
[r5-end]
* partOf ^short = "The organization of which this organization is part of: e.g. an ERN"
* partOf only Reference (OrganizationEuEps or Organization)
* contact ^short = "Organization contact infos"