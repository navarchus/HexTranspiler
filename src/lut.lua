local function defaulthandler(self, _line)
    return({["startDir"]=self["start_dir"], ["angles"]=self["angles"]})
end

local function nilhandler(self, _line)
    return nil
end

local hextable = {
    ["minds-reflection"]={
        ["match_pattern"]="Mind's Reflection",
        ["start_dir"]="NORTH_EAST",
        ["angles"]="qaq",
        ["handler"]=defaulthandler
    },
    ["introspection"]={
        ["match_pattern"]="{",
        ["start_dir"]="NORTH_EAST",
        ["angles"]="qqq",
        ["handler"]=defaulthandler
    },
    ["retrospection"]={
        ["match_pattern"]="}",
        ["start_dir"]="NORTH_EAST",
        ["angles"]="eee",
        ["handler"]=defaulthandler
    },
    --must be last
    ["whitespace"]={
        ["match_pattern"]="[%s]*",
        ["handler"]=nilhandler
    },
    ["comment"]={
        ["match_pattern"]="//.*\n",
        ["handler"]=nilhandler
    }
}

return {hextable = hextable}