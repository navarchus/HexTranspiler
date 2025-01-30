
local h = require("handlers.hexhandlers")

local hextable = {}

table.insert(hextable, {
    ["name"] = "minds-reflection",
    ["match_pattern"] = "Mind's Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "introspection",
    ["match_pattern"] = "{",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qqq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "retrospection",
    ["match_pattern"] = "}",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "eee",
    ["handler"] = h.defaulthandler
})
-- these need to be in this exact order vv
table.insert(hextable, {
    ["name"] = "compass-purification-ii",
    ["match_pattern"] = "Compass' Purification II",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "dd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "compass-purification",
    ["match_pattern"] = "Compass' Purification",
    ["startDir"] = "EAST",
    ["angles"] = "aa",
    ["handler"] = h.defaulthandler
})
-- these need to be in this exact order ^^
table.insert(hextable, {
    ["name"] = "alidades-purification",
    ["match_pattern"] = "Alidade's Purification",
    ["startDir"] = "EAST",
    ["angles"] = "wa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "archers-distillation",
    ["match_pattern"] = "Archer's Distillation",
    ["startDir"] = "EAST",
    ["angles"] = "wqaawdd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "architects-distillation",
    ["match_pattern"] = "Architect's Distillation",
    ["startDir"] = "EAST",
    ["angles"] = "weddwaa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "scouts-distillation",
    ["match_pattern"] = "Scout's Distillation",
    ["startDir"] = "EAST",
    ["angles"] = "weaqa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "reveal",
    ["match_pattern"] = "Reveal",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "de",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "stadiometers-purification",
    ["match_pattern"] = "Stadiometer's Purification",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "awq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "pace-purification",
    ["match_pattern"] = "Pace Purification",
    ["startDir"] = "EAST",
    ["angles"] = "wq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "numerical-reflection",
    ["match_pattern"] = "Numerical Reflection:%s*-?[%d]*[.]?[%d]+",
    ["handler"] = h.numhandler
})
table.insert(hextable, {
    ["name"] = "additive-distillation",
    ["match_pattern"] = "Additive Distillation",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "waaw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "multiplicative-distillation",
    ["match_pattern"] = "Multiplicative Distillation",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "waqaw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "subtractive-distillation",
    ["match_pattern"] = "Subtractive Distillation",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "wddw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "division-distillation",
    ["match_pattern"] = "Division Distillation",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "wdedw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "length-purification",
    ["match_pattern"] = "Length Purification",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "wqaqw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "power-distillation",
    ["match_pattern"] = "Power Distillation",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "wedew",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "floor-purification",
    ["match_pattern"] = "Floor Purification",
    ["startDir"] = "EAST",
    ["angles"] = "ewq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "ceiling-purification",
    ["match_pattern"] = "Ceiling Purification",
    ["startDir"] = "EAST",
    ["angles"] = "qwe",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "vector-exaltation",
    ["match_pattern"] = "Vector Exaltation",
    ["startDir"] = "EAST",
    ["angles"] = "eqqqqq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "vector-disentegration",
    ["match_pattern"] = "Vector Disintegration",
    ["startDir"] = "EAST",
    ["angles"] = "qeeeee",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "modulus-distillation",
    ["match_pattern"] = "Modulus Distillation",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "addwaad",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "axial-purification",
    ["match_pattern"] = "Axial Purification",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "qqqqqaww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "entropy-reflection",
    ["match_pattern"] = "Entropy Reflection",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "eqqq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "entropy-reflection",
    ["match_pattern"] = "Entropy Reflection",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "eqqq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "true-reflection",
    ["match_pattern"] = "True Reflection",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "aqae",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "false-reflection",
    ["match_pattern"] = "False Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "dedq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "nullary-reflection",
    ["match_pattern"] = "Nullary Reflection",
    ["startDir"] = "EAST",
    ["angles"] = "d",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "vector-reflection-zero",
    ["match_pattern"] = "Vector Reflection Zero",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "qqqqq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "vector-reflection-plus-x",
    ["match_pattern"] = "Vector Reflection +X",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "qqqqqea",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "vector-reflection-minus-x",
    ["match_pattern"] = "Vector Reflection -X",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "eeeeeqa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "vector-reflection-plus-y",
    ["match_pattern"] = "Vector Reflection +Y",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "qqqqqew",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "vector-reflection-minus-y",
    ["match_pattern"] = "Vector Reflection -Y",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "eeeeeqw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "vector-reflection-plus-z",
    ["match_pattern"] = "Vector Reflection +Z",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "qqqqqed",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "vector-reflection-minus-z",
    ["match_pattern"] = "Vector Reflection -Z",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "eeeeeqd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "circles-reflection",
    ["match_pattern"] = "Circle's Reflection",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "eawae",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "arcs-reflection",
    ["match_pattern"] = "Arc's Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qdwdq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "eulers-reflection",
    ["match_pattern"] = "Euler's Reflection",
    ["startDir"] = "EAST",
    ["angles"] = "aaq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "novices-gambit",
    ["match_pattern"] = "Novice's Gambit",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "a",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "jesters-gambit",
    ["match_pattern"] = "Jester's Gambit",
    ["startDir"] = "EAST",
    ["angles"] = "aawdd",
    ["handler"] = h.defaulthandler
})
-- these need to be in this exact order vv
table.insert(hextable, {
    ["name"] = "rotation-gambit-II",
    ["match_pattern"] = "Rotation Gambit II",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "ddqdd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "rotation-gambit",
    ["match_pattern"] = "Rotation Gambit",
    ["startDir"] = "EAST",
    ["angles"] = "aaeaa",
    ["handler"] = h.defaulthandler
})
-- these need to be in this exact order ^^
table.insert(hextable, {
    ["name"] = "gemini-decompositon",
    ["match_pattern"] = "Gemini Decomposition",
    ["startDir"] = "EAST",
    ["angles"] = "aadaa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "prospectors-gambit",
    ["match_pattern"] = "Prospector's Gambit",
    ["startDir"] = "EAST",
    ["angles"] = "aaedd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "undertakers-gambit",
    ["match_pattern"] = "Undertaker's Gambit",
    ["startDir"] = "EAST",
    ["angles"] = "ddqaa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "gemini-gambit",
    ["match_pattern"] = "Gemini Gambit",
    ["startDir"] = "EAST",
    ["angles"] = "aadaadaa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "dioscuri-gambit",
    ["match_pattern"] = "Dioscuri Gambit",
    ["startDir"] = "EAST",
    ["angles"] = "aadadaaw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "flocks-reflection",
    ["match_pattern"] = "Flock's Reflection",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "qwaeawqaeaqa",
    ["handler"] = h.defaulthandler
})
-- these need to be in this exact order vv
table.insert(hextable, {
    ["name"] = "fishermans-gambit-ii",
    ["match_pattern"] = "Fisherman's Gambit II",
    ["startDir"] = "EAST",
    ["angles"] = "aada",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "fishermans-gambit",
    ["match_pattern"] = "Fisherman's Gambit",
    ["startDir"] = "WEST",
    ["angles"] = "ddad",
    ["handler"] = h.defaulthandler
})
-- these need to be in this exact order ^^
table.insert(hextable, {
    ["name"] = "bookkeepers-gambit",
    ["match_pattern"] = "Bookkeeper's Gambit:[%s]*[-v]+",
    ["handler"] = h.bookkeeperhandler
})
table.insert(hextable, {
    ["name"] = "swindlers-gambit",
    ["match_pattern"] = "Swindler's Gambit",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qaawdde",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "augurs-purification",
    ["match_pattern"] = "Augur's Purification",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "aw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "negation-purification",
    ["match_pattern"] = "Negation Purification",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "dw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "disjunction-distillation",
    ["match_pattern"] = "Disjunction Distillation",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "waw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "conjunction-distillation",
    ["match_pattern"] = "Conjunction Distillation",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "wdw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "exclusion-distillation",
    ["match_pattern"] = "Exclusion Distillation",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "dwa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "augurs-exaltation",
    ["match_pattern"] = "Augur's Exaltation",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "awdd",
    ["handler"] = h.defaulthandler
})
-- these need to be in this exact order vv
table.insert(hextable, {
    ["name"] = "inequality-distillation",
    ["match_pattern"] = "Inequality Distillation",
    ["startDir"] = "EAST",
    ["angles"] = "da",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "equality-distillation",
    ["match_pattern"] = "Equality Distillation",
    ["startDir"] = "EAST",
    ["angles"] = "ad",
    ["handler"] = h.defaulthandler
})
-- these need to be in this exact order ^^
-- these need to be in this exact order vv
table.insert(hextable, {
    ["name"] = "maximus-distillation-ii",
    ["match_pattern"] = "Maximus Distillation II",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "ee",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "maximus-distillation",
    ["match_pattern"] = "Maximus Distillation",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "e",
    ["handler"] = h.defaulthandler
})
-- these need to be in this exact order ^^
-- these need to be in this exact order vv
table.insert(hextable, {
    ["name"] = "minimus-distillation-ii",
    ["match_pattern"] = "Minimus Distillation II",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "qq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "minimus-distillation",
    ["match_pattern"] = "Minimus Distillation",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "q",
    ["handler"] = h.defaulthandler
})
-- these need to be in this exact order ^^
-- these need to be in this exact order vv
table.insert(hextable, {
    ["name"] = "entity-purification-animal",
    ["match_pattern"] = "Entity Purification: Animal",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqqqqdaqaawa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "entity-purification-monster",
    ["match_pattern"] = "Entity Purification: Monster",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqqqqdaqaawq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "entity-purification-item",
    ["match_pattern"] = "Entity Purification: Item",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqqqqdaqaaww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "entity-purification-player",
    ["match_pattern"] = "Entity Purification: Player",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqqqqdaqaawe",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "entity-purification-living",
    ["match_pattern"] = "Entity Purification: Living",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqqqqdaqaawd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "entity-purification",
    ["match_pattern"] = "Entity Purification",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqqqqdaqa",
    ["handler"] = h.defaulthandler
})
-- these need to be in this exact order ^^
table.insert(hextable, {
    ["name"] = "zone-distillation-animal",
    ["match_pattern"] = "Zone Distillation: Animal",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqqqqwdeddwa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "zone-distillation-non-animal",
    ["match_pattern"] = "Zone Distillation: Non-Animal",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "eeeeewaqaawa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "zone-distillation-monster",
    ["match_pattern"] = "Zone Distillation: Monster",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqqqqwdeddwq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "zone-distillation-non-monster",
    ["match_pattern"] = "Zone Distillation: Non-Monster",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "eeeeewaqaawq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "zone-distillation-item",
    ["match_pattern"] = "Zone Distillation: Item",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqqqqwdeddww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "zone-distillation-non-item",
    ["match_pattern"] = "Zone Distillation: Non-Item",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "eeeeewaqaaww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "zone-distillation-player",
    ["match_pattern"] = "Zone Distillation: Player",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqqqqwdeddwe",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "zone-distillation-non-player",
    ["match_pattern"] = "Zone Distillation: Non-Player",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "eeeeewaqaawe",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "zone-distillation-living",
    ["match_pattern"] = "Zone Distillation: Living",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqqqqwdeddwd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "zone-distillation-non-living",
    ["match_pattern"] = "Zone Distillation: Non-Living",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "eeeeewaqaawd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "zone-distillation-any",
    ["match_pattern"] = "Zone Distillation: Any",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqqqqwded",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "selection-distillation",
    ["match_pattern"] = "Selection Distillation",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "deeed",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "selection-exaltation",
    ["match_pattern"] = "Selection Exaltation",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "qaeaqwded",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "integration-distillation",
    ["match_pattern"] = "Integration Distillation",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "edqde",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "derivation-decompositon",
    ["match_pattern"] = "Derivation Decomposition",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "qaeaq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "vacant-reflection",
    ["match_pattern"] = "Vacant Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qqaeaae",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "single's-purification",
    ["match_pattern"] = "Single's Purification",
    ["startDir"] = "EAST",
    ["angles"] = "adeeed",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "retrograde-purification",
    ["match_pattern"] = "Retrograde Purification",
    ["startDir"] = "EAST",
    ["angles"] = "qqqaede",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "locators-distillation",
    ["match_pattern"] = "Locator's Distillation",
    ["startDir"] = "EAST",
    ["angles"] = "dedqde",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "excisors-distillation",
    ["match_pattern"] = "Excisor's Distillation",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "edqdewaqa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "surgeons-exaltation",
    ["match_pattern"] = "Surgeon's Exaltation",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "wqaeaqw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "flocks-gambit",
    ["match_pattern"] = "Flock's Gambit",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "ewdqdwe",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "flocks-disintegration",
    ["match_pattern"] = "Flock's Disintegration",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "qwaeawq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "speakers-distillation",
    ["match_pattern"] = "Speaker's Distillation",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "ddewedd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "speakers-decomposition",
    ["match_pattern"] = "Speaker's Decomposition",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "aaqwqaa",
    ["handler"] = h.defaulthandler
})
-- these need to be in this exact order vv
table.insert(hextable, {
    ["name"] = "consideration-colon",
    ["match_pattern"] = "Consideration:",
    ["startDir"] = "WEST",
    ["angles"] = "qqqaw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "consideration",
    ["match_pattern"] = "Consideration",
    ["startDir"] = "WEST",
    ["angles"] = "qqqaw",
    ["handler"] = h.defaulthandler
})
-- these need to be in this exact order ^^
table.insert(hextable, {
    ["name"] = "evanition",
    ["match_pattern"] = "Evanition",
    ["startDir"] = "EAST",
    ["angles"] = "eeedw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "scribes-reflection",
    ["match_pattern"] = "Scribe's Reflection",
    ["startDir"] = "EAST",
    ["angles"] = "aqqqqq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "scribes-gambit",
    ["match_pattern"] = "Scribe's Gambit",
    ["startDir"] = "EAST",
    ["angles"] = "deeeee",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "chroniclers-purification",
    ["match_pattern"] = "Chronicler's Purification",
    ["startDir"] = "EAST",
    ["angles"] = "wawqwqwqwqwqw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "chroniclers-gambit",
    ["match_pattern"] = "Chronicler's Gambit",
    ["startDir"] = "EAST",
    ["angles"] = "wdwewewewewew",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "auditors-purification",
    ["match_pattern"] = "Auditor's Purification",
    ["startDir"] = "EAST",
    ["angles"] = "wawqwqwqwqwqwew",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "auditors-reflection",
    ["match_pattern"] = "Auditor's Reflection",
    ["startDir"] = "EAST",
    ["angles"] = "aqqqqqe",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "assessors-reflection",
    ["match_pattern"] = "Assessor's Reflection",
    ["startDir"] = "EAST",
    ["angles"] = "aqqqqqe",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "assessors-purification",
    ["match_pattern"] = "Assessor's Purification",
    ["startDir"] = "EAST",
    ["angles"] = "deeeeeq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "huginns-gambit",
    ["match_pattern"] = "Huginn's Gambit",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "eqqwawqaaw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "muninns-gambit",
    ["match_pattern"] = "Muninn's Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qeewdweddw",
    ["handler"] = h.defaulthandler
})
-- these need to be in this exact order vv
table.insert(hextable, {
    ["name"] = "inverse-sine-purification",
    ["match_pattern"] = "Inverse Sine Purification",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "ddeeeee",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "inverse-cosine-purification",
    ["match_pattern"] = "Inverse Cosine Purification",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "adeeeee",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "inverse-tangent-purification-ii",
    ["match_pattern"] = "Inverse Tangent Purification II",
    ["startDir"] = "WEST",
    ["angles"] = "deadeeeeewd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "inverse-tangent-purification",
    ["match_pattern"] = "Inverse Tangent Purification",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "eadeeeeew",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "sine-purification",
    ["match_pattern"] = "Sine Purification",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqqqqaa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "cosine-purification",
    ["match_pattern"] = "Sine Purification",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqqqqaa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "tangent-purification",
    ["match_pattern"] = "Tangent Purification",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "wqqqqqadq",
    ["handler"] = h.defaulthandler
})
-- these need to be in this exact order ^^
table.insert(hextable, {
    ["name"] = "logarithmic-distillation",
    ["match_pattern"] = "Logarithmic Distillation",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "eqaqe",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "uniqueness-purification",
    ["match_pattern"] = "Uniqueness Purification",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "aweaqa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "hermes-gambit",
    ["match_pattern"] = "Hermes' Gambit",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "deaqq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "iris-gambit",
    ["match_pattern"] = "Iris' Gambit",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "qwaqde",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "thoths-gambit",
    ["match_pattern"] = "Thoth's Gambit",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "dadad",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "charon's-gambit",
    ["match_pattern"] = "Charon's Gambit",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "aqdee",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "thanatos's-reflection",
    ["match_pattern"] = "Thanatos's Reflection",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqaed",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "waystone-reflection",
    ["match_pattern"] = "Waystone Reflection",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "eaqwqae",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "lodestone-reflection",
    ["match_pattern"] = "Lodestone Reflection",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "eaqwqaewede",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "lesser-fold-reflection",
    ["match_pattern"] = "Lesser Fold Reflection",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "eaqwqaewdd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "greater-fold-reflection",
    ["match_pattern"] = "Greater Fold Reflection",
    ["startDir"] = "WEST",
    ["angles"] = "aqwqawaaqa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "akashas-distillation",
    ["match_pattern"] = "Akasha's Distillation",
    ["startDir"] = "WEST",
    ["angles"] = "qqqwqqqqqaq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "akashas-distillation",
    ["match_pattern"] = "Akasha's Distillation",
    ["startDir"] = "EAST",
    ["angles"] = "eeeweeeeede",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "explosion",
    ["match_pattern"] = "Explosion",
    ["startDir"] = "EAST",
    ["angles"] = "aawaawaa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "fireball",
    ["match_pattern"] = "fireball",
    ["startDir"] = "EAST",
    ["angles"] = "ddwddwdd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "impulse",
    ["match_pattern"] = "impulse",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "awqqqwaqw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "blink",
    ["match_pattern"] = "blink",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "awqqqwaq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "make-note",
    ["match_pattern"] = "Make Note",
    ["startDir"] = "WEST",
    ["angles"] = "adaa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "place-block",
    ["match_pattern"] = "Place Block",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "eeeeede",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "break-block",
    ["match_pattern"] = "Break Block",
    ["startDir"] = "EAST",
    ["angles"] = "qaqqqqq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "create-water",
    ["match_pattern"] = "Create Water",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "aqawqadaq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "destroy-liquid",
    ["match_pattern"] = "Destroy Liquid",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "dedwedade",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "conjure-block",
    ["match_pattern"] = "Conjure Block",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qqa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "conjure-light",
    ["match_pattern"] = "Conjure Light",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qqd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "overgrow",
    ["match_pattern"] = "Overgrow",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "wqaqwawqaqw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "edify-sapling",
    ["match_pattern"] = "Edify-Sapling",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "wqaqwd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "ignite",
    ["match_pattern"] = "Ignite",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "aaqawawa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "extinguish-area",
    ["match_pattern"] = "Extinguish Area",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "aaqawawa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "white-suns-nadir",
    ["match_pattern"] = "White Sun's Nadir",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "qqqqqaqwawaw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "blue-suns-nadir",
    ["match_pattern"] = "Blue Sun's Nadir",
    ["startDir"] = "WEST",
    ["angles"] = "qqqqqawwawawd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "black-suns-nadir",
    ["match_pattern"] = "Black Sun's Nadir",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "qqqqqaewawawe",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "red-suns-nadir",
    ["match_pattern"] = "Red Sun's Nadir",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqqqqadwawaww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "green-suns-nadir",
    ["match_pattern"] = "Green Sun's Nadir",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqqqqadwawaw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "craft-cypher",
    ["match_pattern"] = "Craft Cypher",
    ["startDir"] = "EAST",
    ["angles"] = "waqqqqq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "craft-trinket",
    ["match_pattern"] = "Craft Trinket",
    ["startDir"] = "EAST",
    ["angles"] = "wwaqqqqqeaqeaeqqqeaeq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "craft-artifact",
    ["match_pattern"] = "Craft Artifact",
    ["startDir"] = "EAST",
    ["angles"] = "wwaqqqqqeawqwqwqwqwqwwqqeadaeqqeqqeadaeqq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "recharge-item",
    ["match_pattern"] = "Recharge Item",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "qqqqqwaeaeaeaeaea",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "erase-item",
    ["match_pattern"] = "Erase Item",
    ["startDir"] = "EAST",
    ["angles"] = "qdqawwaww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "summon-sentinel",
    ["match_pattern"] = "Summon Sentinel",
    ["startDir"] = "EAST",
    ["angles"] = "waeawae",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "banish-sentinel",
    ["match_pattern"] = "Banish Sentinel",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qdwdqdw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "locate-sentinel",
    ["match_pattern"] = "Locate Sentinel",
    ["startDir"] = "EAST",
    ["angles"] = "waeawaede",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "wayfind-sentinel",
    ["match_pattern"] = "Wayfind Sentinel",
    ["startDir"] = "EAST",
    ["angles"] = "waeawaedwa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "internalize-pigment",
    ["match_pattern"] = "Internalize Pigment",
    ["startDir"] = "EAST",
    ["angles"] = "awddwqawqwawq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "casters-glamour",
    ["match_pattern"] = "Caster's Glamour",
    ["startDir"] = "WEST",
    ["angles"] = "dwaawedwewdwe",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "anchorites-flight",
    ["match_pattern"] = "Anchorite's Flight",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "awawaawq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "wayfarers-flight",
    ["match_pattern"] = "Wayfarer's Flight",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "dwdwdewq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "aviators-purification",
    ["match_pattern"] = "Aviator's Purification",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "dwdwdeweaqa",
    ["handler"] = h.defaulthandler
})
-- Great Spells
table.insert(hextable, {
    ["name"] = "create-lava",
    ["match_pattern"] = "Create Lava",
    ["handler"] = h.greatspellhandler
})
table.insert(hextable, {
    ["name"] = "summon-lightning",
    ["match_pattern"] = "Summon Lightning",
    ["handler"] = h.greatspellhandler
})
table.insert(hextable, {
    ["name"] = "summon-rain",
    ["match_pattern"] = "Summon Rain",
    ["handler"] = h.greatspellhandler
})
table.insert(hextable, {
    ["name"] = "dispel-rain",
    ["match_pattern"] = "Dispel Rain",
    ["handler"] = h.greatspellhandler
})
table.insert(hextable, {
    ["name"] = "altiora",
    ["match_pattern"] = "Altiora",
    ["handler"] = h.greatspellhandler
})
table.insert(hextable, {
    ["name"] = "greater-teleport",
    ["match_pattern"] = "Greater Teleport",
    ["handler"] = h.greatspellhandler
})
table.insert(hextable, {
    ["name"] = "blue-suns-zenith",
    ["match_pattern"] = "Blue Sun's Zenith",
    ["handler"] = h.greatspellhandler
})
table.insert(hextable, {
    ["name"] = "black-suns-zenith",
    ["match_pattern"] = "Black Sun's Zenith",
    ["handler"] = h.greatspellhandler
})
table.insert(hextable, {
    ["name"] = "red-suns-zenith",
    ["match_pattern"] = "Red Sun's Zenith",
    ["handler"] = h.greatspellhandler
})
table.insert(hextable, {
    ["name"] = "white-suns-zenith",
    ["match_pattern"] = "White Sun's Zenith",
    ["handler"] = h.greatspellhandler
})
table.insert(hextable, {
    ["name"] = "green-suns-zenith",
    ["match_pattern"] = "Green Sun's Zenith",
    ["handler"] = h.greatspellhandler
})
table.insert(hextable, {
    ["name"] = "summon-greater-sentinel",
    ["match_pattern"] = "Summon Greater Sentinel",
    ["handler"] = h.greatspellhandler
})
table.insert(hextable, {
    ["name"] = "craft-phial",
    ["match_pattern"] = "Craft Phial",
    ["handler"] = h.greatspellhandler
})
table.insert(hextable, {
    ["name"] = "flay-mind",
    ["match_pattern"] = "Flay Mind",
    ["handler"] = h.greatspellhandler
})

return { hextable = hextable }
