// Ruleset for creating concept map elements
RuleSet: ConceptMapElement(sourceCode, sourceDisplay, targetCode, targetDisplay, relationship)
* element[+]
  * code = #{sourceCode}
  * display = "{sourceDisplay}"
  * target[+]
    * code = #{targetCode}
    * display = "{targetDisplay}"
    * equivalence = #{relationship}
