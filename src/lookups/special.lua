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
    ["match_pattern"] = "#define (%a+%s?%a+) (%(%s*(%S+)%s*([aqweds]*)%s*%))%s*$",
    ["handler"] = h.definehandler
})
table.insert(hextable, {
    ["name"] = "include-macro",
    ["match_pattern"] = "#include ([^%s])[%s]$",
    ["handler"] = h.includehandler
})

return {hextable = hextable}