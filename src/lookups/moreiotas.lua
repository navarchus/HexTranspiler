local h = require("handlers.hexhandlers")

local hextable = {}

table.insert(hextable, {
    ["name"] = "transformation-purification",
    ["match_pattern"] = "Transformation Purification",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "awwaeawwaadwa",
    ["handler"] = h.defaulthandler
})

-- these should be in this order vv

table.insert(hextable, {
    ["name"] = "restoration-purification-ii",
    ["match_pattern"] = "Restoration Purification II",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "dwwdqdwwdwdwa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "restoration-purification",
    ["match_pattern"] = "Restoration Purification",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "dwwdqdwwddawd",
    ["handler"] = h.defaulthandler
})

-- these should be in this order ^^

table.insert(hextable, {
    ["name"] = "identity-purification",
    ["match_pattern"] = "Identity Purification",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "awwaeawwaqw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "zero-distillation",
    ["match_pattern"] = "Zero Distillation",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "awwaeawwa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "rotation-distillation",
    ["match_pattern"] = "Rotation Distillation",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "awwaeawwawawddw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "multiplicative-distillation-ii",
    ["match_pattern"] = "Multiplicative Distillation II",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "waqawawwaeaww",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "division-distillation-ii",
    ["match_pattern"] = "Division Distillation II",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "wdedwdwwdqdww",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "power-distillation-ii",
    ["match_pattern"] = "Power Distillation II",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "wedewqawwawqwa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "transpose-purification",
    ["match_pattern"] = "Transpose Purification",
    ["startDir"] = "EAST",
    ["angles"] = "qqqaede",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "inverse-purification",
    ["match_pattern"] = "Inverse Purification",
    ["startDir"] = "WEST",
    ["angles"] = "wwdqdwwdqaq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "determinant-purification",
    ["match_pattern"] = "Determinant Purification",
    ["startDir"] = "WEST",
    ["angles"] = "aeawwaeawaw",
    ["handler"] = h.defaulthandler
})


table.insert(hextable, {
    ["name"] = "tower-distillation",
    ["match_pattern"] = "Tower Distillation",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "awwaeawwawawdedwa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "sprawling-distillation",
    ["match_pattern"] = "Sprawling Distillation",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "dwwdqdwwdwdwaqawd",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "toppling-gambit",
    ["match_pattern"] = "Toppling Gambit",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "awdedwawawwaeawwa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "mitosis-gambit",
    ["match_pattern"] = "Mitosis Gambit",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "dwaqawdwdwwdqdwwd",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "separation-distillation",
    ["match_pattern"] = "Separation Distillation",
    ["startDir"] = "EAST",
    ["angles"] = "aqwaqa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "input-purification",
    ["match_pattern"] = "Input Purification",
    ["startDir"] = "EAST",
    ["angles"] = "aqwaq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "input-purification",
    ["match_pattern"] = "Input Purification",
    ["startDir"] = "EAST",
    ["angles"] = "aqwaq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "blank-reflection",
    ["match_pattern"] = "Blank Reflection",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "awdwa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "spacing-reflection",
    ["match_pattern"] = "Spacing Reflection",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "awdwaaww",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "comma-reflection",
    ["match_pattern"] = "Comma Reflection",
    ["startDir"] = "EAST",
    ["angles"] = "qa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "breaking-reflection",
    ["match_pattern"] = "Breaking Reflection",
    ["startDir"] = "EAST",
    ["angles"] = "waawaw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "whisper-reflection",
    ["match_pattern"] = "Whisper Reflection",
    ["startDir"] = "EAST",
    ["angles"] = "waqa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "listners-reflection",
    ["match_pattern"] = "Listner's Reflection",
    ["startDir"] = "EAST",
    ["angles"] = "wded",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "sifters-gambit",
    ["match_pattern"] = "Sifter's Gambit",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qwaqa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "sifters-reflection",
    ["match_pattern"] = "Sifter's Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "ewded",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "readers-purification",
    ["match_pattern"] = "Reader's Purification",
    ["startDir"] = "EAST",
    ["angles"] = "awqwawqe",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "write",
    ["match_pattern"] = "Write",
    ["startDir"] = "WEST",
    ["angles"] = "dwewdweq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "scriveners-purification",
    ["match_pattern"] = "Scrivener's Purification",
    ["startDir"] = "EAST",
    ["angles"] = "wawqwawaw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "patternmasters-purification",
    ["match_pattern"] = "Patternmaster's Purification",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "wdwewdwdw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "monkier-purification",
    ["match_pattern"] = "Moniker Purification",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "deqqeddqwqqqwq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "name",
    ["match_pattern"] = "Name",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "aqeeqaaeweeewe",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "case-distillation",
    ["match_pattern"] = "Case Distillation",
    ["startDir"] = "WEST",
    ["angles"] = "dwwdwwdwdd",
    ["handler"] = h.defaulthandler
})


return {hextable = hextable}