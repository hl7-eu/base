
Instance: LocationExample
InstanceOf: LocationEu
Title: "Location: example"
Description: "Example of Location resource conformant with the core profile"
* id = "example-location"


// to be added => * physicalType ^short = "Location type"
* name = "Best Location"

* address.line = "123 Example Street"
* address.city = "Example City"
* address.state = "EX"
* address.postalCode = "12345"
* address.country = "EX"

[r4-init]
* telecom
  * system = #phone
  * value = "555-1234"
  * use = #work
[r4-end]
[r5-init]
* contact.telecom
  * system = #phone
  * value = "555-1234"
  * use = #work
[r5-end]

