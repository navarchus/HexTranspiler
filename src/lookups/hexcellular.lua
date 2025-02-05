local h = require("handlers.hexhandlers")

local hextable = {}

table.insert(hextable, {
    ["name"] = "schrodingers-reflection",
    ["match_pattern"] = "Schrodinger's Reflection",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "aawe",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "schrodingers-gambit",
    ["match_pattern"] = "Schrodinger's Gambit",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "aawq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "observation-purification",
    ["match_pattern"] = "Observation Purification",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "aawd",
    ["handler"] = h.defaulthandler
})

--duplicated because funny ö

table.insert(hextable, {
    ["name"] = "schrodingers-reflection",
    ["match_pattern"] = "Schrödinger's Reflection",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "aawe",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "schrodingers-gambit",
    ["match_pattern"] = "Schrödinger's Gambit",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "aawq",
    ["handler"] = h.defaulthandler
})
return { hextable = hextable }