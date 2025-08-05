Profile: LocationEu
Parent: Location
Id: location-eu
Title: "Location (EU base)"
Description: "This profile sets minimum expectations for the Location resource to be used for the purpose of this guide."
* insert SetFmmandStatusRule (2, draft)
* managingOrganization	only Reference(OrganizationEu) 
  * ^short = "Managing organization"
  * ^comment = "The managing organization is the organization responsible for the location, such as a hospital or clinic."
* physicalType ^short = "Location type"
* telecom ^short = "Location telecom"
* name ^short = "Location name"
* address only AddressEu