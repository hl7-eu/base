Profile: LocationEuCore
Parent: Location
Id: location-eu-core
Title: "Location (EU core)"
Description: "This profile sets minimum expectations for the Location resource to be used for the purpose of this guide."
* insert SetFmmandStatusRule (2, draft)
* managingOrganization	// only Reference(OrganizationEu) 
  * ^short = "Managing organization"
  * ^comment = "The managing organization is the organization responsible for the location, such as a hospital or clinic."
* identifier ^short = "Location identifier"
* physicalType ^short = "Location type"
* telecom ^short = "Location telecom"
* name ^short = "Location name"
* partOf ^short = "Location this one is physically a part of"
* address only AddressEu