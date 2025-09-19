local h = require("handlers.hexhandlers")

local hextable = {}

table.insert(hextable, {
    ["name"] = "skip",
    ["match_pattern"] = "[%s]",
    ["handler"] = h.nilhandler
})
table.insert(hextable, {
    ["name"] = "comment",
    ["match_pattern"] = "//.*$",
    ["handler"] = h.nilhandler
})

table.insert(hextable, {
    ["name"] = "define-macro",
    ["match_pattern"] = h.definepattern,
    ["handler"] = h.definehandler
})
table.insert(hextable, {
    ["name"] = "include-macro",
    ["match_pattern"] = h.includepattern,
    ["handler"] = h.includehandler
})

return {hextable = hextable}