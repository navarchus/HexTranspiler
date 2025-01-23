local function defaulthandler(self, _line)
    return({["startDir"]=self["start_dir"], ["angles"]=self["angles"]})
end

local hextable = {
    ["minds-reflection"]={
        ["match_pattern"]="[%s]*Mind's Reflection[%s]*",
        ["start_dir"]="NORTH_EAST",
        ["angles"]="qaq",
        ["handler"]=defaulthandler
    },
    ["introspection"]={
        ["match_pattern"]="[%s]*{[%s]*",
        ["start_dir"]="NORTH_EAST",
        ["angles"]="qqq",
        ["handler"]=defaulthandler
    },
    ["retrospection"]={
        ["match_pattern"]="[%s]*}[%s]*",
        ["start_dir"]="NORTH_EAST",
        ["angles"]="eee",
        ["handler"]=defaulthandler
    },
}

return {hextable = hextable}