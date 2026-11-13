// The whole obligation machinery of this guide, unused: ObligationSet1 to 3 are never inserted, and the two helpers below serve only them.

RuleSet: ObligationSet1
* insert ObligationActorAndCode($server, #SHALL:handle)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
// * insert ObligationActorAndCode($server, #will-send)
* insert ObligationActorAndCode($creator, #SHALL:able-to-populate)
// * insert ObligationActorAndCode($creator, #can-populate)

RuleSet: ObligationSet2
* insert ObligationActorAndCode($server, #SHALL:handle)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
// * insert ObligationActorAndCode($server, #can-send)
// * insert ObligationActorAndCode($creator, #can-send)
* insert ObligationActorAndCode($creator, #SHOULD:able-to-populate)

RuleSet: ObligationSet3
* insert ObligationActorAndCode($server, #SHALL:handle)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
// * insert ObligationActorAndCode($server, #can-send)
// * insert ObligationActorAndCode($creator, #can-send)
* insert ObligationActorAndCode($creator, #MAY:able-to-populate)

RuleSet: ObligationActorAndCode(actor, code)
* ^extension[$obligation][+].extension[code].valueCode = {code}
* ^extension[$obligation][=].extension[actor].valueCanonical = {actor}

RuleSet: ObligationElement(element)
// Used for profile level obligations. Insert after obligation code and actor
* ^extension[$obligation][=].extension[elementId].valueString = {element}
