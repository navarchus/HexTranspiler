local h = require("handlers.hexhandlers")

local hextable = {}

table.insert(hextable, {
    ["name"] = "constant-imagination",
    ["match_pattern"] = "Constant Imagination",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "wqq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "constant-realisation",
    ["match_pattern"] = "Constant Realisation",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "wqqa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "realising-complexities",
    ["match_pattern"] = "Realising Complexities",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "deew",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "imagining-complexities",
    ["match_pattern"] = "Imagining Complexities",
    ["startDir"] = "WEST",
    ["angles"] = "eew",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "conjugation-purification",
    ["match_pattern"] = "Conjugation Purification",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "wqqd",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "quaternionic-exaltation",
    ["match_pattern"] = "Quaternionic Exaltation",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "waqqqqqe",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "quaternionic-disintegration",
    ["match_pattern"] = "Quaternionic Disintegration",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "wdeeeeeq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "quaternionic-reflection-1",
    ["match_pattern"] = "Quaternionic Reflection: 1",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "waqqqqqea",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "quaternionic-reflection-i",
    ["match_pattern"] = "Quaternionic Reflection: i",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "waqqqqqeq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "quaternionic-reflection-j",
    ["match_pattern"] = "Quaternionic Reflection: j",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "waqqqqqee",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "quaternionic-reflection-k",
    ["match_pattern"] = "Quaternionic Reflection: k",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "waqqqqqed",
    ["handler"] = h.defaulthandler
})

-- TODO: is this a placeholder?
table.insert(hextable, {
    ["name"] = "qmul",
    ["match_pattern"] = "Qmul",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "waqqqqqewaqaw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "quaternionic-purification-1",
    ["match_pattern"] = "Quaternionic Purification: 1",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "wdeeeeeqa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "quaternionic-purification-i",
    ["match_pattern"] = "Quaternionic Purification: i",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "wdeeeeeqq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "quaternionic-purification-j",
    ["match_pattern"] = "Quaternionic Purification: j",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "wdeeeeeqe",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "quaternionic-purification-k",
    ["match_pattern"] = "Quaternionic Purification: k",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "wdeeeeeqd",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "quaternionic-inverse",
    ["match_pattern"] = "Quaternionic Inverse",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "waqqqqqew",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "matrixification",
    ["match_pattern"] = "Matrixification",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "wdeeeeeqeawwaeaww",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "quaterniation",
    ["match_pattern"] = "Quaterniation",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "waqqqqqeeawwaeaww",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "axis-angle-distillation",
    ["match_pattern"] = "Axis Angle Distillation",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "waqqqqqedaqqqa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "bubbles-purification",
    ["match_pattern"] = "Bubbles' Purification",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qdqdqdqdqdq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "summon-block-display",
    ["match_pattern"] = "Summon Block Display",
    ["handler"] = h.greatspellhandler
})

table.insert(hextable, {
    ["name"] = "summon-item-display",
    ["match_pattern"] = "Summon Item Display",
    ["handler"] = h.greatspellhandler
})

table.insert(hextable, {
    ["name"] = "summon-text-display",
    ["match_pattern"] = "Summon Text Display",
    ["handler"] = h.greatspellhandler
})

table.insert(hextable, {
    ["name"] = "entity-purification-bit",
    ["match_pattern"] = "Entity Purification: BIT",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqwwewewewewewwqqdaqaaww",
    ["handler"] = h.greatspellhandler
})
-- must be in this order vv
table.insert(hextable, {
    ["name"] = "zone-distillation-not-bit",
    ["match_pattern"] = "Zone Distillation: Not BIT",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "eewwqwqwqwqwqwweewaqaaww",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "zone-distillation-bit",
    ["match_pattern"] = "Zone Distillation: BIT",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqwwewewewewewwqqwdeddww",
    ["handler"] = h.defaulthandler
})
-- must be in this order ^^

table.insert(hextable, {
    ["name"] = "translate-bit",
    ["match_pattern"] = "Translate BIT",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "wqwqwqwqwqwawwaqaeaqe",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "rotate-bit",
    ["match_pattern"] = "Rotate BIT",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "wqwqwqwqwqwaqeeeeedww",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "scale-bit",
    ["match_pattern"] = "Scale BIT",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "wqwqwqwqwqwawwaawaawa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "kill-bit",
    ["match_pattern"] = "Kill BIT",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "wqwqwqwqwqwaqdwddwdq",
    ["handler"] = h.defaulthandler
})

return {hextable = hextable}