Profile: LocationEu
Parent: Location
Id: location-eu
Title: "Location (EU base)"
Description: "This profile sets minimum expectations for the Location resource to be used for the purpose of this guide."

* insert SetFmmandStatusRule (2, trial-use)

[r4-init]
* physicalType ^short = "Location type"
* telecom ^short = "Location telecom"
[r4-end]
[r5-init]
* type ^short = "Location type"
* contact.telecom ^short = "Location telecom"
[r5-end]
* name ^short = "Location name"

* address only AddressEu