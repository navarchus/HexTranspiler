local h = require("handlers.hexhandlers")

local hextable = {}

table.insert(hextable, {
    ["name"] = "empower-mind-render",
    ["match_pattern"] = "Empower Mind Render",
    ["handler"] = h.greatspellhandler
})

table.insert(hextable, {
    ["name"] = "conduct-rod",
    ["match_pattern"] = "Conduct Rod",
    ["startDir"] = "EAST",
    ["angles"] = "eqqqqqawweqqqqqawweqqqqqawwdeqewwwwweqeeeqewwwwweqe",
    ["handler"] = h.greatspellhandler
})
-- these must be in this order vv
table.insert(hextable, {
    ["name"] = "baton-reflection-ii",
    ["match_pattern"] = "Baton Reflection II",
    ["startDir"] = "EAST",
    ["angles"] = "qwqqqwqawaa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "baton-reflection",
    ["match_pattern"] = "Baton Reflection",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qwqqqwqawa",
    ["handler"] = h.defaulthandler
})
-- these must be in this order ^^

table.insert(hextable, {
    ["name"] = "metronome-reflection",
    ["match_pattern"] = "Metronome Reflection",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qwqqqwqawaaw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "metronome-reflection",
    ["match_pattern"] = "Metronome Gambit",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qwqqqwqaqddq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "finale",
    ["match_pattern"] = "Finale",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "aqdeeweeew",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "encore",
    ["match_pattern"] = "Encore",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "deaqqwqqqw",
    ["handler"] = h.defaulthandler
})
-- these must be in this order vv
table.insert(hextable, {
    ["name"] = "williams-gambit-ii",
    ["match_pattern"] = "William's Gambit II",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "ewdedwqwqwdedwqwaaw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "williams-reflection-ii",
    ["match_pattern"] = "William's Reflection II",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qwaqawewewaqawewddw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "conductors-reflection-ii",
    ["match_pattern"] = "Conductor's Reflection II",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qwqqqwqaqded",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "williams-gambit",
    ["match_pattern"] = "William's Gambit",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "eqqwqqqwaaw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "williams-reflection",
    ["match_pattern"] = "William's Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qeeweeewddw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "conductors-reflection",
    ["match_pattern"] = "Conductor's Reflection",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qwqqqwqaeaqa",
    ["handler"] = h.defaulthandler
})
-- these must be in this order ^^
table.insert(hextable, {
    ["name"] = "instill-psyche",
    ["match_pattern"] = "Instill Psyche",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qeqwqqedeeeeeaqwqeqaqedqde",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "craft-bottomless-trinket",
    ["match_pattern"] = "Craft Bottomless Trinket",
    ["startDir"] = "EAST",
    ["angles"] = "wwqeeeeewqqqqqewwaqeqwqeqqqeqwqeq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "scrutinize-sentinel",
    ["match_pattern"] = "Scrutinize Sentinel",
    ["startDir"] = "EAST",
    ["angles"] = "waeawaeddwwd",
    ["handler"] = h.defaulthandler
})
-- these must be in this order vv
table.insert(hextable, {
    ["name"] = "spatial-reflection-ii",
    ["match_pattern"] = "Spatial Reflection II",
    ["startDir"] = "WEST",
    ["angles"] = "wqwqwqwqwqwaqeeq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "spatial-reflection",
    ["match_pattern"] = "Spatial Reflection",
    ["startDir"] = "WEST",
    ["angles"] = "wqwqwqwqwqwaeqqe",
    ["handler"] = h.defaulthandler
})
-- these must be in this order ^^
table.insert(hextable, {
    ["name"] = "homeland-reflection",
    ["match_pattern"] = "Homeland Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "wqwqwqwqwqwawedewdwedew",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "inferno-reflection",
    ["match_pattern"] = "Inferno Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "wqwqwqwqwqwaqaaqaw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "atlas-decomposition",
    ["match_pattern"] = "Atlas' Decomposition",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "awqqqwqwqwqwqwq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "ratio-purification",
    ["match_pattern"] = "Ratio Purification",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "wawawqwqwqwqwqw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "soulprint-reflection",
    ["match_pattern"] = "Soulprint Reflection",
    ["startDir"] = "EAST",
    ["angles"] = "qqaqwedee",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "sign-item",
    ["match_pattern"] = "Sign Item",
    ["startDir"] = "EAST",
    ["angles"] = "qqaqwedeea",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "signature-purification",
    ["match_pattern"] = "Signature Purification",
    ["startDir"] = "EAST",
    ["angles"] = "qqaqwedeed",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "inscribe-idea",
    ["match_pattern"] = "Inscribe Idea",
    ["startDir"] = "EAST",
    ["angles"] = "eweweweweweeewqaqwe",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "retrieve-idea",
    ["match_pattern"] = "Retrieve Idea",
    ["startDir"] = "WEST",
    ["angles"] = "qwqwqwqwqwqqqwedewq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "metadata-purification",
    ["match_pattern"] = "Metadata Purification",
    ["startDir"] = "WEST",
    ["angles"] = "qwqwqwqwqwqqqeqaqeq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "metadata-distillation",
    ["match_pattern"] = "Metadata Distillation",
    ["startDir"] = "WEST",
    ["angles"] = "qwqwqwqwqwqaeqedeqe",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "media-infusion",
    ["match_pattern"] = "Media Infusion",
    ["handler"] = h.greatspellhandler
})

table.insert(hextable, {
    ["name"] = "noetic-gateway",
    ["match_pattern"] = "Noetic Gateway",
    ["handler"] = h.greatspellhandler
})

table.insert(hextable, {
    ["name"] = "spatial-interchange",
    ["match_pattern"] = "Spatial Interchange",
    ["handler"] = h.greatspellhandler
})

table.insert(hextable, {
    ["name"] = "stealth-shroud",
    ["match_pattern"] = "Stealth Shroud",
    ["handler"] = h.greatspellhandler
})

table.insert(hextable, {
    ["name"] = "discern-shroud",
    ["match_pattern"] = "Discern Shroud",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqqqqwwaawewaawdww",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "uplifting-resonance",
    ["match_pattern"] = "Uplifting Resonance",
    ["handler"] = h.greatspellhandler
})


return {hextable = hextable}