local function defaulthandler(self, _line)
    return({["startDir"]=self["start_dir"], ["angles"]=self["angles"]})
end

local hextable = {
    ["[%s]*Mind's Reflection[%s]*"]={
        ["start_dir"]="NORTH_EAST",
        ["angles"]="qaq",
        ["handler"]=defaulthandler
    },
    --- introspection
    ["[%s]*{[%s]*"]={
        ["start_dir"]="NORTH_EAST",
        ["angles"]="qqq",
        ["handler"]=defaulthandler
    },
    --- retrospection
    ["[%s]*}[%s]*"]={
        ["start_dir"]="NORTH_EAST",
        ["angles"]="eee",
        ["handler"]=defaulthandler
    },
}

return {hextable = hextable}