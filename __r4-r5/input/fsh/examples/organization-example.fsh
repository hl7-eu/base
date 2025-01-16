
Instance: OrganizationExample
InstanceOf: OrganizationEuCore
Title: "Example Organization"
Description: "An example of an organization resource"
* id = "example-organization"
* name = "Example Health Organization"
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"

[r4-init]
* address.line = "123 Example Street"
* address.city = "Example City"
* address.state = "EX"
* address.postalCode = "12345"
* address.country = "EX"
* telecom.system = #phone
* telecom.value = "555-1234"
* telecom.use = #work
[r4-end]
[r5-init]
* contact
  * address.line = "123 Example Street"
  * address.city = "Example City"
  * address.state = "EX"
  * address.postalCode = "12345"
  * address.country = "EX"
  * telecom.system = #phone
  * telecom.value = "555-1234"
  * telecom.use = #work
[r5-end]


// * partOf = Reference(Organization/parent-organization)

