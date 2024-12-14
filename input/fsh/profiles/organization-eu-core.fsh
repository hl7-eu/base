Profile: OrganizationEuCore
Parent: OrganizationEu
Id: organization-eu-core
Title: "Organization (EU Core)"
Description: "This profile sets minimum expectations for the Organization resource to searching for and fetching an Organization associated with a patient or provider for the purpose of this guide."
* insert ImposeProfile($Organization-uv-ips, 0)
* name 1..
* partOf only Reference (OrganizationEuCore)