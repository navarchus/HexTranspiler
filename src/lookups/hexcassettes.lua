local h = require("handlers.hexhandlers")

local hextable = {}

table.insert(hextable, {
    ["name"] = "dequeue",
    ["match_pattern"] = "Dequeue",
    ["startDir"] = "WEST",
    ["angles"] = "eqeweweweweqedwqeeeeewwqqwqwqqweawwqwqwwqwwqwqww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "disqueue",
    ["match_pattern"] = "Disqueue",
    ["startDir"] = "WEST",
    ["angles"] = "eqeweweweweqedwqeeeeewwqqwqwqqw",
    ["handler"] = h.defaulthandler
})
-- these must be in this order vv
table.insert(hextable, {
    ["name"] = "threading-reflection-ii",
    ["match_pattern"] = "Threading Reflection II",
    ["startDir"] = "EAST",
    ["angles"] = "qeqwqwqwqwqeqaweqqqqqwweeweweew",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "threading-reflection",
    ["match_pattern"] = "Threading Reflection",
    ["startDir"] = "EAST",
    ["angles"] = "qeqwqwqwqwqeqaweqqqqq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "program-purification-ii",
    ["match_pattern"] = "Program Purification II",
    ["startDir"] = "WEST",
    ["angles"] = "eqeweweweweqedwqeeeeedww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "program-purification",
    ["match_pattern"] = "Program Purification",
    ["startDir"] = "WEST",
    ["angles"] = "eqeweweweweqedwqeeeee",
    ["handler"] = h.defaulthandler
})
-- these must be in this order ^^

return { hextable = hextable }