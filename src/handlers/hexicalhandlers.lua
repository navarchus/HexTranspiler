local function nepthyshandler(self, match, line_num)
    local num = tonumber(string.match(match, "Nephthys's Gambit:[%s]*([%d]+)"))
    if num == nil or num < 0 then
        error("Line: "..line_num.." Nepthys's Gambit must have a numerical value greater than or equal to 0")
    end
    local startDir = "SOUTH_EAST"
    local angles = "deaqq"

    for i = 1, num, 1 do
        if i == 1 then
            angles = angles.."d"
        elseif i % 2 == 0 then
            angles = angles.."q"
        else
            angles = angles.."e"
        end
    end

    return {{["startDir"]=startDir, ["angles"]=angles}}
end

local function sehkmethandler(self, match, line_num)
    local num = tonumber(string.match(match, "Sehkmet's Gambit:[%s]*([%d]+)"))
    if num == nil or num < 0 then
        error("Line: "..line_num.." Sehkmet's Gambit must have a numerical value greater than or equal to 0")
    end
    local startDir = "SOUTH_WEST"
    local angles = "qaqdd"

    for i = 1, num, 1 do
        if i % 2 == 0 then
            angles = angles.."e"
        else
            angles = angles.."q"
        end
    end

    return {{["startDir"]=startDir, ["angles"]=angles}}
end

return {nepthyshandler=nepthyshandler, sehkmethandler=sehkmethandler}