Profile: PatientEuMpd
// Parent: $Patient-uv-ips 
Parent: Patient
Id: Patient-eu-mpd
Title: "Patient: MPD"
Description: "This profile defines how to represent Patient in HL7 FHIR for the purpose of this guide."
/* * extension contains $patient-nationality named nationality 0..*
* extension[nationality] ^short = "Nationality" */

* identifier ^short = "patient identifier"
* name 1..* 
/* * name obeys xeh-pat-1 */
* name ^requirements = "Need to be able to track the patient by multiple names. Examples are your official name and a partner name.\r\nThe Alphabetic representation of the name SHALL be always provided"
* name.text ^definition = "Text representation of the full name. Due to the cultural variance around the world a consuming system may not know how to present the name correctly; moreover not all the parts of the name go in given or family. Creators are therefore strongly encouraged to provide through this element a presented version of the name. Future versions of this guide may require this element"
* name.family 1..1 
* name.given 1..
* telecom ^short = "A contact detail for the patient"
* gender ^short = "The gender of the patient used for administrative purposes."
* birthDate 1..
  * ^short = "The date of birth for the patient"
* address ^short = "Patient Address"
/* * address obeys pat-cnt-2or3-char */
* contact
 // * relationship only $CodeableConcept-uv-ips
  * address ^short = "Contact person address"
  * telecom ^short = "Contact details for the person"
  * name
    * given 1.. // to be checked
    * family 1.. // to be checked

* generalPractitioner ^short = "Patient's nominated primary care provider."
* generalPractitioner only Reference( Organization or PractitionerRole) // is this OK ?
* communication.language ^short = "Communication language"


/* Invariant: xeh-pat-1
Description: "Patient.name.given, Patient.name.family or Patient.name.text SHALL be present"
Severity: #error
Expression: "family.exists() or given.exists() or text.exists()"
XPath: "f:given or f:family or f:text"

Invariant: pat-cnt-2or3-char
Description: "The content of the country element (if present) SHALL be selected EITHER from ValueSet ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2 OR MAY be selected from ISO Country Alpha-3 Value Set http://hl7.org/fhir/ValueSet/iso3166-1-3, IF the country is not specified in value Set ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2."
Severity: #warning
Expression: "country.empty() or (country.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-2') or country.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-3'))" */