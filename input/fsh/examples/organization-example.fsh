Instance: OrganizationExample
InstanceOf: OrganizationEuCore
Title: "Example Organization"
Description: "An example of an Organization resource"
* id = "organization-eu-core-example"
* name = "Example Health Organization"
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
* address.line = "123 Example Street"
* address.city = "Example City"
* address.state = "EX"
* address.postalCode = "12345"
* address.country = "EX"
* telecom.system = #phone
* telecom.value = "555-1234"
* telecom.use = #work
// * partOf = Reference(Organization/parent-organization)
