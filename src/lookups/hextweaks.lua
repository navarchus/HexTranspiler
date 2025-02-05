local h = require("handlers.hexhandlers")

local hextable = {}

table.insert(hextable, {
    ["name"] = "clerks-vacant-reflection",
    ["match_pattern"] = "Clerk's Vacant Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqwaq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "clerks-distillation",
    ["match_pattern"] = "Clerk's Distillation",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqwaqeqdweeew",
    ["handler"] = h.defaulthandler
})
-- these must be in this order vv
table.insert(hextable, {
    ["name"] = "clerks-decomposition-ii",
    ["match_pattern"] = "Clerk's Decomposition II",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqwaqdwqqqwq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "clerks-decomposition",
    ["match_pattern"] = "Clerk's Decomposition",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqwaqdwqqqwae",
    ["handler"] = h.defaulthandler
})
-- these must be in this order ^^
table.insert(hextable, {
    ["name"] = "clerks-abacus-purification",
    ["match_pattern"] = "Clerk's Abacus Purification",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqwaqeewaqaeaq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "clerks-integration-exaltation",
    ["match_pattern"] = "Clerk's Integration Exaltation",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqwaqdqedqde",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "clerks-surgeons-exaltation",
    ["match_pattern"] = "Clerk's Surgeon's Exaltation",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqwaqdadeeed",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "clerks-excisors-distillation",
    ["match_pattern"] = "Clerk's Excisor's Distillation",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqwaqeqdd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "clerks-thoths-gambit",
    ["match_pattern"] = "Clerk's Thoth's Gambit",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqwaqedadad",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "progress-gambit",
    ["match_pattern"] = "Progress Gambit",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "qqaw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "regress-gambit",
    ["match_pattern"] = "Regress Gambit",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "eedw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "iterators-purification",
    ["match_pattern"] = "Iterator's Purification",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "wdwaw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "nadir-of-nausea",
    ["match_pattern"] = "Nadir of Nausea",
    ["startDir"] = "EAST",
    ["angles"] = "weed",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "natural-search",
    ["match_pattern"] = "Natural Search",
    ["handler"] = h.greatspellhandler
})
table.insert(hextable, {
    ["name"] = "suspicious-glyph",
    ["match_pattern"] = "Suspicious Glyph",
    ["handler"] = h.greatspellhandler
})

-- TODO: Grand spell support?

return {hextable = hextable}