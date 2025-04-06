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
* telecom.system = #phone
* telecom.value = "555-1234"
* telecom.use = #work
