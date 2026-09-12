// Generic helpers this guide never inserts: it defines no extensions, imposes no profiles, and sets no FMM on instances.

RuleSet: ExtensionContext(path)
// copied by mCode
* ^context[+].type = #element
* ^context[=].expression = "{path}"

RuleSet: ImposeProfile ( profile, index )
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile][{index}].valueCanonical = {profile}

RuleSet: SetFmmandStatusRuleInstance ( fmm, status )
// Rule to be used for Instances
* extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = {fmm}
* extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #{status}
