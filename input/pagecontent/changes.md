This page summarizes the main changes applied to this version of the guide.

### 0.1.0-ballot to 0.1.0


* FHIR-51370 Changed IPS dependency to 2.0.0
* FHIR-51879, FHIR-51321, FHIR-51318 Removed scoped references from base profiles
* FHIR-51374 Added page for missing data; removed data-absent-reason extensions
* FHIR-51267 Removed EHIC from this version
* FHIR-50782, FHIR-51880 added explanations about address line extensions usage
* FHIR-51199 Revised index and introduction pages extending explanations about core and base profiles
* FHIR-51664 Substituted the iso21090-SC-coding extension with iso21090-codedString (R4)
* FHIR-50969 Added minimal guidance for sex/gender related extensions
* FHIR-50968 Fixed the HL7 Europe Copyright statement
* FHIR-51269 Added intro text about extensions for the AddressEu profile
* FHIR-51272 Removed from the base profiles all the references to IPS datatypes
* FHIR-51402 and FHIR-51569 Patient Animal as core profile derived from the Pateint Base
* FHIR-51989 Removed not used VSs
* FHIR-51222 Added EHDS models and maps to profiles
* FHIR-51222 (first commit)Merge pull request #11 from /masterauthored
* FHIR-51375 Consistent display names, 
* FHIR-51391 use left/right/bilateral in laterality value set
* FHIR-51270 added gender-identity and pronoun ext to Patient
* FHIR-51374 Moved data-absent-reason ext to core profiles, where elements are 1..
* FHIR-51663 Fixed resource ids (lowerCamelCase)
* FHIR-51223 Artifacts Summary: grouped profiles
* FHIR-51262 Fixed several typos in the artefacts page
* FHIR-51261 Patient name.extension[name-absent-reason] 0..1
* FHIR-51369 Added EHIC Model to R5 IG
* FHIR-51394 Patient EHIC Profile derived from EU Core
* FHIR-51177 Patient: added the birthTime extension
* FHIR-51268 Location.managingOrganization reference set to OrganizationEU
* FHIR-51362 Patient.communication set to ..0 for animals
* FHIR-51221 Fixed package ids in the home page
* FHIR-51372 Fixed typo in the downloads.md text
* FHIR-51392 Fixed typo in the Constraint: name-or-identier
* FHIR-51438 Fixed Description for Patient-animal-eu