local csv = require("utilities.csv")

local definepattern="#define ([%a%s]+) (%(%s*(%S+)%s*([aqweds]*)%s*%))([,%a%s%=%-%>]*)"
local includepattern="#include%s+\"([%S]+)\"%s*$"

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
    local f = csv.open(hexpiler_dir .. "/greatspells/greatspells.csv", { ["header"] = true })
    if f == nil then
        error("Could not open Great Spell file", 0)
    end
    for fields in f:lines() do
        if fields["NAME"] == self["name"] then
            local res = {
                [1] = { ["startDir"] = fields["STARTDIR"], ["angles"] = fields["ANGLES"] }
            }
            return res
        end
    end

    local continueprompt =
    "\nPress y to proceed with Great Spell definition.\nPress any other key to abort compilation.\n"
    print("No matching great spell found for " .. match)
    print(continueprompt)
    local user_input = read()
    if user_input ~= "y" then
        error("Undefined great spell on line: " .. line_num, 0)
    end
    print()


    print("Insert a focus containing the definition for " ..
        match ..
        " into a focal port attached to this computer.\nThe definition must be escaped with consideration, not intro/retrospection.")
    print(continueprompt)
    local user_input = read()
    if user_input ~= "y" then
        error("Undefined great spell on line: " .. line_num, 0)
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
    greatspellfilehandler.write("\n" .. self["name"] .. "," .. self["match_pattern"] .. "," .. startDir .. "," .. angles)
    greatspellfilehandler.close()

    print("If exporting, insert a blank focus into attached focal port to write hex to.")
    print(continueprompt)
    local user_input = read()
    if user_input ~= "y" then
        error("User cancellation after Great Spell definition", 0)
    end
    print()

    local res = {
        [1] = { ["startDir"] = startDir, ["angles"] = angles }
    }

    return res
end

local function definehandler(self, match, line_num)
    local name, _patterndef, startDir, angles, _operation_info = string.match(match,
        definepattern)

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
            definepattern)
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

    local function gen_num(num)
        num = math.floor(num)
        local pattern = ""
        local base = ""
        if num < 0 then
            base = "dedd"
        else
            base = "aqaa"
        end
        num = math.abs(num)
        while num > 0 do
            if num % 2 == 0 then
                num = num / 2
                pattern = pattern .. "a"
            else
                num = num - 1
                pattern = pattern .. "w"
            end
        end
        pattern = string.reverse(pattern)
        return base .. pattern
    end

    local sign, num, fraction = string.match(match, "(%-?)([%d]+([.]?[%d]*))")

    local startDir = ""
    local angles = ""

    if sign == "-" then
        startDir = "NORTH_EAST"
    else
        startDir = "SOUTH_EAST"
    end

    if fraction ~= "" then
        local precision = #fraction-1 --account for "." being included

        angles = gen_num((2 ^ tonumber(precision)) * tonumber(sign..num)) .. string.rep("d", precision)
        -- chloe : to let it work with decimals, just multiply the input number by 2^<precision level>
        -- and append <precision level> as 'a' to the end of the literal
        -- (think she meant 'd')
    else
        angles = gen_num(tonumber(sign..num))
    end

    return { { ["startDir"] = startDir, ["angles"] = angles } }
end

-- The following are specific to Hexical/Overevaluate/whatever miyu comes up with lol
local function nepthyshandler(self, match, line_num)
    local num = tonumber(string.match(match, "Nephthys's Gambit:[%s]*([%d]+)"))
    if num == nil or num < 0 then
        error("Line: " .. line_num .. " Nepthys's Gambit must have a numerical value greater than or equal to 0")
    end
    local startDir = "SOUTH_EAST"
    local angles = "deaqq"

    for i = 1, num, 1 do
        if i == 1 then
            angles = angles .. "d"
        elseif i % 2 == 0 then
            angles = angles .. "q"
        else
            angles = angles .. "e"
        end
    end

    return { { ["startDir"] = startDir, ["angles"] = angles } }
end

local function sekhmethandler(self, match, line_num)
    local num = tonumber(string.match(match, "Sekhmet's Gambit:[%s]*([%d]+)"))

    if num == nil then
        -- temp fix for bad hexpattern stuff
        num = tonumber(string.match(match, "Sekhmet' Gambit:[%s]*([%d]+)"))
    end

    if num == nil or num < 0 then
        error("Line: " .. line_num .. " Sekhmet's Gambit must have a numerical value greater than or equal to 0")
    end
    local startDir = "SOUTH_WEST"
    local angles = "qaqdd"

    for i = 0, num - 1, 1 do
        if i % 2 == 0 or i == 0 then
            angles = angles .. "q"
        else
            angles = angles .. "e"
        end
    end

    return { { ["startDir"] = startDir, ["angles"] = angles } }
end

local function gebhandler(self, match, line_num)
    local num = tonumber(string.match(match, "Geb's Gambit:[%s]*([%d]+)"))
    if num == nil or num < 1 then
        error("Line: " .. line_num .. " Geb's Gambit must have a numerical value greater than or equal to 1")
    end
    local startDir = "WEST"
    local angles = "aaeaad"

    for i = 1, num, 1 do
        angles = angles .. "w"
    end

    return { { ["startDir"] = startDir, ["angles"] = angles } }
end

local function nuthandler(self, match, line_num)
    local num = tonumber(string.match(match, "Nut's Gambit:[%s]*([%d]+)"))
    if num == nil or num < 1 then
        error("Line: " .. line_num .. " Nut's Gambit must have a numerical value greater than or equal to 1")
    end
    local startDir = "EAST"
    local angles = "aawdde"

    for _ = 1, num, 1 do
        angles = angles .. "w"
    end

    return { { ["startDir"] = startDir, ["angles"] = angles } }
end

return {
    definepattern = definepattern,
    includepattern = includepattern,

    numhandler = numhandler,
    greatspellhandler = greatspellhandler,
    defaulthandler = defaulthandler,
    definehandler = definehandler,
    nilhandler = nilhandler,
    bookkeeperhandler = bookkeeperhandler,
    includehandler = includehandler,
    nepthyshandler = nepthyshandler,
    sekhmethandler = sekhmethandler,
    gebhandler = gebhandler,
    nuthandler = nuthandler,
}
