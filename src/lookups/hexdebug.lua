local h = require("handlers.hexhandlers")

local hextable = {}

table.insert(hextable, {
    ["name"] = "debuggers-reflection",
    ["match_pattern"] = "Debugger's Reflection",
    ["startDir"] = "EAST",
    ["angles"] = "qqqqqewaa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "set-breakpoint-before",
    ["match_pattern"] = "Set Breakpoint Before",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "awqdeew",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "set-breakpoint-after",
    ["match_pattern"] = "Set Breakpoint After",
    ["startDir"] = "EAST",
    ["angles"] = "wqqaewd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "craft-debugger",
    ["match_pattern"] = "Craft Debugger",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "aaewwwwwaqwawqwadawqwwwawwwqwwwaw",
    ["handler"] = h.defaulthandler
})

return { hextable = hextable }