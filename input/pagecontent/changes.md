This page summarizes the main changes applied to this version of the guide.

### 0.1.0-ballot to 0.1.0


* Updated IPS dependency to version `2.0.0` (FHIR-51370).
* Removed scoped references from base profiles (FHIR-51879; FHIR-51321; FHIR-51318).
* Added page for missing data and removed *data-absent-reason* extensions (FHIR-51374).
* Removed EHIC from this version (FHIR-51267).
* Added explanations about *Address.line* extensions usage (FHIR-50782; FHIR-51880).
* Revised index and introduction pages with extended explanations about core and base profiles (FHIR-51199).
* Replaced `iso21090-SC-coding` extension with `iso21090-codedString` (FHIR-51664, R4).
* Added minimal guidance for sex/gender-related extensions (FHIR-50969).
* Fixed HL7 Europe copyright statement (FHIR-50968).
* Added introductory text about extensions for the *AddressEu* profile (FHIR-51269).
* Removed references to IPS datatypes from base profiles (FHIR-51272).
* Defined *Patient Animal* as a core profile derived from *Patient Base* (FHIR-51402; FHIR-51569).
* Removed unused value sets (FHIR-51989).
* Added EHDS models and mappings to profiles (FHIR-51222).
* Harmonized display names across artefacts (FHIR-51375).
* Updated laterality value set to use *left/right/bilateral* (FHIR-51391).
* Added *gender-identity* and *pronoun* extensions to *Patient* (FHIR-51270).
* Moved *data-absent-reason* extensions to core profiles where elements are `1..` (FHIR-51374).
* Fixed resource IDs to follow `lowerCamelCase` convention (FHIR-51663).
* Grouped profiles in *Artifacts Summary* page (FHIR-51223).
* Fixed typos in the artefacts page (FHIR-51262).
* Set `Patient.name.extension[name-absent-reason]` to `0..1` (FHIR-51261).
* Added EHIC model to the R5 IG (FHIR-51369).
* Created *Patient EHIC* profile derived from *EU Core* (FHIR-51394).
* Added *birthTime* extension to *Patient* (FHIR-51177).
* Set `Location.managingOrganization` reference to *OrganizationEU* (FHIR-51268).
* Set `Patient.communication` to `0..0` for animals (FHIR-51362).
* Fixed package IDs on the home page (FHIR-51221).
* Fixed typo in *downloads.md* (FHIR-51372).
* Fixed typo in constraint name `name-or-identifier` (FHIR-51392).
* Corrected description for *Patient-animal-eu* profile (FHIR-51438).