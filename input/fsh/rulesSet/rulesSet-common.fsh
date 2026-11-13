RuleSet: SetFmmandStatusRule ( fmm, status )
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = {fmm}
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #{status}


RuleSet: SNOMEDCopyrightForVS
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^experimental = false

RuleSet: LOINCCopyrightForVS
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = false

RuleSet: LoincNPUCopyrightForVS
* ^copyright = """This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc 
This material contains content from NPU Terminology (http://npu-terminology.org). NPU is copyright International Federation of Clinical Chemistry (IFCC) and International Union of Pure and Applied Chemistry (IUPAC) and is available at no cost under the license at https://www.labterm.dk/."""
* ^experimental = false

RuleSet: LoincSnomedCopyrightForVS
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement.
This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = false

/* RuleSet: JCTLMCopyrightForVS
* ^copyright = "This material contains content from JCTLM Database (https://www.jctlmdb.org). The JCTLM Database is copyright Joint Committee for Traceability in Laboratory Medicine (JCTLM)."
* ^experimental = false */

RuleSet: SliceElement( type, path )
* ^slicing.discriminator.type = {type}
* ^slicing.discriminator.path = "{path}"
* ^slicing.rules = #open
* ^slicing.ordered = false

RuleSet: SliceElementWithDescription( type, path, description )
* ^slicing.discriminator.type = {type}
* ^slicing.discriminator.path = "{path}"
* ^slicing.rules = #open
* ^slicing.description = "{description}"
* ^slicing.ordered = false
