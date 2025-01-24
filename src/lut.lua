-- Helper fns
-- needed for numhandler
function table.deepcopy(o, seen)
    seen = seen or {}
    if o == nil then return nil end
    if seen[o] then return seen[o] end


    local no = {}
    seen[o] = no
    setmetatable(no, table.deepcopy(getmetatable(o), seen))

    for k, v in next, o, nil do
        k = (type(k) == 'table') and k:deepcopy(seen) or k
        v = (type(v) == 'table') and v:deepcopy(seen) or v
        no[k] = v
    end
    return no
end

local function defaulthandler(self, _line)
    return { [1] = { ["startDir"] = self["start_dir"], ["angles"] = self["angles"] } }
end

local function nilhandler(self, _line)
    return nil
end

local function numhandler(self, line)
    ---comment
    ---@param current number
    ---@param target number
    ---@param patternstring string
    ---@return string
    local function calc_num(current, target, patternstring)
        if current == target then
            return patternstring
        end

        local diff = math.abs(target - current)
        if diff >= 10 then
            return calc_num(current + 10, target, patternstring .. "e")
        elseif diff >= 5 then
            return calc_num(current + 5, target, patternstring .. "q")
        else
            return calc_num(current + 1, target, patternstring .. "w")
        end
    end

    local add_pat = { ["startDir"] = "NORTH_EAST", ["angles"] = "waaw" }
    local divide_pat = { ["startDir"] = "NORTH_EAST", ["angles"] = "wdedw" }

    local sign, whole, fraction = string.match(line, "(-?)([%d]+)[.]?([%d]*)")

    whole = tonumber(whole)
    fraction = tonumber(fraction)

    if whole == nil then
        error("Error creating Numerical Reflection, check syntax")
    end

    local zero = {}
    if sign == "-" then
        zero = { ["startDir"] = "NORTH_EAST", ["angles"] = "dedd" }
    else
        zero = { ["startDir"] = "SOUTH_EAST", ["angles"] = "aqaa" }
    end

    --calculate whole part of number
    local calc_whole = table.deepcopy(zero)
    if calc_whole == nil then
        error("Error copying numerical zero table")
    end

    local extra_whole_symbols = calc_num(0, whole, "")
    calc_whole["angles"] = calc_whole["angles"] .. extra_whole_symbols

    if fraction ~= nil then
        --we need to do fraction
        local calc_fraction = table.deepcopy(zero)
        -- need this to always be positive zero
        local calc_divisor = { ["startDir"] = "SOUTH_EAST", ["angles"] = "aqaa" }


        if calc_fraction == nil or calc_divisor == nil then
            error("Error copying numerical zero table")
        end
        local extra_fraction_symbols = calc_num(0, fraction, "")
        calc_fraction["angles"] = calc_fraction["angles"] .. extra_fraction_symbols

        local extra_divisor_symbols =  calc_num(0, 10^string.len(fraction), "")
        calc_divisor["angles"] = calc_divisor["angles"]..extra_divisor_symbols

        return {[1]=calc_whole, [2]=calc_fraction, [3]=calc_divisor, [4]=divide_pat, [5]=add_pat}

    else
        --we can just return whole number
        return {[1]=calc_whole}
    end



    -- if we would return nil something awful has happened
    error("Could not create number via decompositon!")
end

local hextable = {
    [1] = {
        ["name"] = "skip",
        ["match_pattern"] = "[%s]*",
        ["handler"] = nilhandler
    },
    [2] = {
        ["name"] = "comment",
        ["match_pattern"] = "//.*$",
        ["handler"] = nilhandler
    },
    [3] = {
        ["name"] = "minds-reflection",
        ["match_pattern"] = "Mind's Reflection",
        ["start_dir"] = "NORTH_EAST",
        ["angles"] = "qaq",
        ["handler"] = defaulthandler
    },
    [4] = {
        ["name"] = "introspection",
        ["match_pattern"] = "{",
        ["start_dir"] = "NORTH_EAST",
        ["angles"] = "qqq",
        ["handler"] = defaulthandler
    },
    [5] = {
        ["name"] = "retrospection",
        ["match_pattern"] = "}",
        ["start_dir"] = "NORTH_EAST",
        ["angles"] = "eee",
        ["handler"] = defaulthandler
    },
    -- these need to be in this exact order vv
    [6] = {
        ["name"] = "compass-purification-ii",
        ["match_pattern"] = "Compass' Purification II",
        ["start_dir"] = "NORTH_EAST",
        ["angles"] = "dd",
        ["handler"] = defaulthandler
    },
    [7] = {
        ["name"] = "compass-purification",
        ["match_pattern"] = "Compass' Purification",
        ["start_dir"] = "EAST",
        ["angles"] = "aa",
        ["handler"] = defaulthandler
    },
    -- these need to be in this exact order ^^
    [8] = {
        ["name"] = "alidades-purification",
        ["match_pattern"] = "Alidade's Purification",
        ["start_dir"] = "EAST",
        ["angles"] = "wa",
        ["handler"] = defaulthandler
    },
    [9] = {
        ["name"] = "archers-distillation",
        ["match_pattern"] = "Archer's Distillation",
        ["start_dir"] = "EAST",
        ["angles"] = "wqaawdd",
        ["handler"] = defaulthandler
    },
    [10] = {
        ["name"] = "architects-distillation",
        ["match_pattern"] = "Architect's Distillation",
        ["start_dir"] = "EAST",
        ["angles"] = "weddwaa",
        ["handler"] = defaulthandler
    },
    [11] = {
        ["name"] = "scouts-distillation",
        ["match_pattern"] = "Scout's Distillation",
        ["start_dir"] = "EAST",
        ["angles"] = "weaqa",
        ["handler"] = defaulthandler
    },
    [12] = {
        ["name"] = "reveal",
        ["match_pattern"] = "Reveal",
        ["start_dir"] = "NORTH_EAST",
        ["angles"] = "de",
        ["handler"] = defaulthandler
    },
    [13] = {
        ["name"] = "stadiometers-purification",
        ["match_pattern"] = "Stadiometer's Purification",
        ["start_dir"] = "NORTH_EAST",
        ["angles"] = "awq",
        ["handler"] = defaulthandler
    },
    [14] = {
        ["name"] = "pace-purification",
        ["match_pattern"] = "Pace Purification",
        ["start_dir"] = "EAST",
        ["angles"] = "wq",
        ["handler"] = defaulthandler
    },
    [15] = {
        ["name"] = "numerical-reflection",
        ["match_pattern"] = "Numerical Reflection:%s*-?[%d]*[.]?[%d]+",
        ["handler"] = numhandler
    },
}

return { hextable = hextable }
