local csv = require("utilities.csv")

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

local function defaulthandler(self, _match, line_num)
    return { [1] = { ["startDir"] = self["startDir"], ["angles"] = self["angles"] } }
end

local function nilhandler(self, _match, line_num)
    return nil
end

local function greatspellhandler(self, match, line_num)
    local hexpiler_dir = fs.getDir(shell.getRunningProgram())
    if not fs.exists(hexpiler_dir .. "/greatspells/greatspells.csv") then
        local greatspellfile = fs.open(hexpiler_dir .. "/greatspells/greatspells.csv", "w")
        greatspellfile.write("NAME, MATCHPATTERN, STARTDIR, ANGLES")
        greatspellfile.close()
    end
    local f = csv.open(hexpiler_dir .. "/greatspells/greatspells.csv", {["header"]=true})
    if f == nil then
        error("Could not open Great Spell file",0)
    end
    for fields in f:lines() do
        if fields["NAME"]==self["name"] then
            local res = {
                [1] = {["startDir"] = fields["STARTDIR"], ["angles"] = fields["ANGLES"]}
            }
            return res
        end
    end

    local continueprompt = "\nPress y to proceed with Great Spell definition.\nPress any other key to abort compilation.\n"
    print("No matching great spell found for "..match)
    print(continueprompt)
    local user_input = read()
    if user_input ~= "y" then
        error("Undefined great spell on line: "..line_num, 0)
    end
    print()


    print("Insert a focus containing the definition for "..match.." into a focal port attached to this computer.\nThe definition must be escaped with consideration, not intro/retrospection.")
    print(continueprompt)
    local user_input = read()
    if user_input ~= "y" then
        error("Undefined great spell on line: "..line_num, 0)
    end
    print()


    local focal_port = peripheral.find("focal_port")
    local iota = focal_port.readIota()

    local startDir = iota["startDir"]
    local angles = iota["angles"]

    if startDir == nil or angles == nil then
        error("Unable to read Great Spell definition from focal port")
    end

    local greatspellfilehandler = fs.open(hexpiler_dir .. "/greatspells/greatspells.csv", "a")
    greatspellfilehandler.write("\n"..self["name"]..","..self["match_pattern"]..","..startDir..","..angles)
    greatspellfilehandler.close()

    print("If exporting, insert a blank focus into attached focal port to write hex to.")
    print(continueprompt)
    local user_input = read()
    if user_input ~= "y" then
        error("User cancellation after Great Spell definition", 0)
    end
    print()

    local res = {
        [1] = {["startDir"] = startDir, ["angles"] = angles}
    }

    return res
end

local function definehandler(self, match, line_num)
    local name, patterndef, startDir, angles = string.match(match,
        "#define (%a+%s?%a+) (%(%s*(%S+)%s*([aqweds]*)%s*%))%s*$")

    if name == nil and startDir == nil and angles == nil then
        error("line " .. line_num .. ": " .. "Cannot have empty define", 0)
    elseif name == nil and startDir ~= nil and angles ~= nil then
        error("line " .. line_num .. ": " .. "Cannot have unnamed define", 0)
    elseif angles ~= nil and startDir == nil then
        error("line " .. line_num .. ": " .. "Cannot have angles in a define without start dir", 0)
    end
    --check for bad startDir and bad angles
    local is_valid_start = (startDir == "NORTH_EAST" or startDir == "EAST" or startDir == "SOUTH_EAST" or startDir == "SOUTH_WEST" or startDir == "WEST" or startDir == "NORTH_WEST")
    if not is_valid_start then
        error("line " .. line_num .. ": " .. "Invalid startDir in define", 0)
    end

    if angles == "" then
        return { { ["name"] = name, ["startDir"] = "startDir" }, ["definemacro"] = true }
    end

    local is_valid_angles = string.match(angles, "[aqweds]+")
    if not is_valid_angles then
        error("line " .. line_num .. ": " .. "Invalid angles in define", 0)
    end

    return { [1] = { { ["name"] = name, ["startDir"] = "startDir", ["angles"] = angles } }, ["macro"] = true }
end

local function includehandler(self, match, line_num)
    local include_rawpath = string.match(match, "#include%s+\"([%S]+)\"%s*$")
    --this will fail in non cc environments
    local include_path = shell.resolve(include_rawpath)
    if not fs.exists(include_path) then
        error("line " .. line_num .. ": " .. "Invalid path for include: " .. include_path, 0)
    end

    local include_file = fs.open(include_path, "r")
    local include_lines = {}
    while true do
        local line = include_file.readLine()
        if not line then break end
        include_lines[#include_lines + 1] = line
    end
    include_file.close()

    local defines = {}
    --look for #define statements:
    for include_line_num, include_line in ipairs(include_lines) do
        local include_sidx, include_eidx = string.find(include_line,
            "^[%s]*#define (%a+%s?%a+) (%(%s*(%S+)%s*([aqweds]*)%s*%))%s*$")
        if include_sidx ~= nil and include_eidx ~= nil then
            local define_res = definehandler(self, string.sub(include_line, include_sidx, include_eidx), include_line_num)
            table.insert(defines, define_res[1][1])
        end
    end

    return { defines, ["macro"] = true }
end

local function bookkeeperhandler(self, match, line_num)
    local startDir = ""
    local angles = ""
    local keeper_arguments = string.match(match, "[-v]+")

    if keeper_arguments == nil then
        error("line " .. line_num .. ": " .. "Must provide at least one argument for Bookkeeper's Gambit", 0)
    end

    -- figure out starting direction
    local start = string.sub(keeper_arguments, 1, 1)
    if start == "v" then
        startDir = "SOUTH_EAST"
        angles = angles .. "a"
    elseif start == "-" then
        startDir = "EAST"
    else
        error("line " .. line_num .. ": " .. "Invalid bookkeper's argument: " .. start, 0)
    end
    for i = 2, #keeper_arguments do
        local curr = keeper_arguments:sub(i, i)
        local prev = keeper_arguments:sub(i - 1, i - 1)

        if curr ~= "-" and curr ~= "v" then
            error("line " .. line_num .. ": " .. "Invalid bookkeper's argument: " .. curr, 0)
        end

        if prev == "-" and curr == "-" then
            angles = angles .. "w"
        elseif prev == "-" and curr == "v" then
            angles = angles .. "ea"
        elseif prev == "v" and curr == "-" then
            angles = angles .. "e"
        elseif prev == "v" and curr == "v" then
            angles = angles .. "da"
        end
    end
    return { [1] = { ["startDir"] = startDir, ["angles"] = angles } }
end

-- TODO: Rework this to make it (theoretically) doable by hand
local function numhandler(self, match, line_num)
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
        if (current * 2) <= diff and current ~= 0 then
            return calc_num(current * 2, target, patternstring .. "a")
        elseif diff >= 10 then
            return calc_num(current + 10, target, patternstring .. "e")
        elseif diff >= 5 then
            return calc_num(current + 5, target, patternstring .. "q")
        else
            return calc_num(current + 1, target, patternstring .. "w")
        end
    end

    local add_pat = { ["startDir"] = "NORTH_EAST", ["angles"] = "waaw" }
    local divide_pat = { ["startDir"] = "NORTH_EAST", ["angles"] = "wdedw" }

    local sign, whole, fraction = string.match(match, "(-?)([%d]+)[.]?([%d]*)")

    whole = tonumber(whole)
    fraction = tonumber(fraction)

    if whole == nil then
        error("line " .. line_num .. ": " .. "Error creating Numerical Reflection, check syntax", 0)
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
        error("line " .. line_num .. ": " .. "Error copying numerical zero table", 0)
    end

    local extra_whole_symbols = calc_num(0, whole, "")
    calc_whole["angles"] = calc_whole["angles"] .. extra_whole_symbols

    if fraction ~= nil then
        --we need to do fraction
        local calc_fraction = table.deepcopy(zero)
        -- need this to always be positive zero
        local calc_divisor = { ["startDir"] = "SOUTH_EAST", ["angles"] = "aqaa" }


        if calc_fraction == nil or calc_divisor == nil then
            error("line " .. line_num .. ": " .. "Error copying numerical zero table", 0)
        end
        local extra_fraction_symbols = calc_num(0, fraction, "")
        calc_fraction["angles"] = calc_fraction["angles"] .. extra_fraction_symbols

        local extra_divisor_symbols = calc_num(0, 10 ^ string.len(fraction), "")
        calc_divisor["angles"] = calc_divisor["angles"] .. extra_divisor_symbols

        return { [1] = calc_whole, [2] = calc_fraction, [3] = calc_divisor, [4] = divide_pat, [5] = add_pat }
    else
        --we can just return whole number
        return { [1] = calc_whole }
    end



    -- if we would return nil something awful has happened
    error("line " .. line_num .. ": " .. "Could not create number via decompositon!", 0)
end

return {
    numhandler = numhandler,
    greatspellhandler = greatspellhandler,
    defaulthandler = defaulthandler,
    definehandler =
        definehandler,
    nilhandler = nilhandler,
    bookkeeperhandler = bookkeeperhandler,
    includehandler = includehandler
}
