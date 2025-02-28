local h = require("handlers.hexhandlers")
-- needed vars
local hexpiler_dir = fs.getDir(shell.getRunningProgram())


-- Helper Fns

-- whether string is 'true' or not
---@param str string
---@return boolean
local function tobool(str)
    local bool = false
    if str == "true" then
        bool = true
    end
    return bool
end

-- given a matchpattern for a greatspell, removes the definition from the greatspells.csv file
local function removegreatspell(pattern)
    if pattern == "all" then
        local greatspellfile = fs.open(hexpiler_dir .. "/greatspells/greatspells.csv", "w")
        greatspellfile.write("NAME, MATCHPATTERN, STARTDIR, ANGLES")
        greatspellfile.close()
    else
        local lines = {}
        local greatspellfile = fs.open(hexpiler_dir .. "/greatspells/greatspells.csv", "r")
        while true do
            local line = greatspellfile.readLine()
            if not line then break end
            lines[#lines + 1] = line
        end
        greatspellfile.close()
        local goodlines = nil
        for line_num, line in ipairs(lines) do
            local line_pat = string.match(line, "[%S%s]+,([%S%s]+),[%S%s]+,[%S%s]+")
            if not (pattern == line_pat) then
                if not goodlines then
                    goodlines = line
                else
                    goodlines = goodlines.."\n"..line
                end
            end
        end
        local greatspellfile = fs.open(hexpiler_dir .. "/greatspells/greatspells.csv", "w")
        greatspellfile.write(goodlines)
        greatspellfile.close()
    end
end


--Subcommands:
-- cleargreatspell/cgs <string> : clear great spell from great spell file with given string. If given the string "all", clears all great spells.
local args = { ... }

if arg[1] == "cleargreatspell" or arg[1] == "cgs" then
    local param = arg[2]
    removegreatspell(param)
    return
end


local argmap = {
    i = "--input",
    o = "--output",
    l = "--lut",
    e = "--export",
}


--Args:
-- --input/-i <string> : path to input file (should be in .hexpattern format: https://github.com/object-Object/vscode-hex-casting)
-- --output/-o <string> : path to output (eg: h.hexout) (alphanumeric representation of ducky peripheral iota format)
-- --lut/-l <string> : path to hexpattern lookup table (can have multiple)
-- --export/-e <bool> : whether to attempt to export transpiled hex to focus using ducky peripherals (default true) (https://github.com/SamsTheNerd/ducky-periphs/wiki/Focal-Port)

local input = ""
local output = ""
local export = true
--temp list for lookup tables
local arglookups = {}

for i = 1, #args, 2 do
    local arg, param = args[i], args[i + 1]
    if arg:match "^%-%a$" then arg = argmap[arg:match "^%-(%a)$"] or arg end
    if not arg:match "^%-%-" then error("Invalid argument at position " .. i) end
    if param == nil then error("Missing parameter to " .. arg) end
    if arg == "--input" then
        input = param
    elseif arg == "--output" then
        output = param
    elseif arg == "--lut" then
        if not fs.exists("/" .. shell.resolve(param)) then
            error("--lut valid filepath required!")
        end
        --strip .lua bc require doesn't like it
        local fixedparam = string.gsub(param, ".lua", "")
        table.insert(arglookups, fixedparam)
    elseif arg == "--export" then
        export = tobool(param)
    end
end

if input == "" then error("--input <filepath> required!") end
if not (export == true or export == false) then error("Invalid param set") end


-- load lookup tables
-- this will fail in non cc environments

--load skip, comment, #define and #include first
local lookuptables = { [1] = shell.resolve(hexpiler_dir .. "/lookups/special") }
--load user defined lookup tables
for index, table_path in ipairs(arglookups) do
    if table_path then
        local curr_table = "/" .. shell.resolve(table_path)
        table.insert(lookuptables, curr_table)
    end
end

--attempt to load all non sensitive lookup tables in ./lookups
for _, filename in pairs(fs.list(hexpiler_dir .. "/lookups")) do
    --strip .lua bc require doesn't like it
    local fixedfilename = string.gsub(filename, ".lua", "")
    if fixedfilename ~= "special" or fixedfilename ~= "hexcasting" then
        table.insert(lookuptables, hexpiler_dir .. "/lookups/" .. fixedfilename)
    end
end

--load base hexcasting last
table.insert(lookuptables, shell.resolve(hexpiler_dir .. "/lookups/hexcasting"))
--flatten everything
local hexlookup = {}
for idx, table_path in ipairs(lookuptables) do
    local curr_table = require("/" .. shell.resolve(table_path))
    for hex_idx, hex_val in ipairs(curr_table["hextable"]) do
        table.insert(hexlookup, hex_val)
    end
end



-- load input
if not fs.exists(input) then error("Bad input path") end
local file = fs.open(input, "r")
local lines = {}
while true do
    local line = file.readLine()
    if not line then break end
    lines[#lines + 1] = line
end

-- get resulting hexpattern
local result_hex = {}

for line_num, line in ipairs(lines) do
    --skip empty lines
    if string.len(line) ~= 0 then
        local line_position = 1
        -- add one to prevent off by one errors
        while line_position < string.len(line) + 1 do
            --ensure we don't skip characters
            for hex_idx, hex_data in ipairs(hexlookup) do
                local sidx, eidx = string.find(line, hex_data["match_pattern"], line_position)
                if sidx and eidx and sidx == line_position then
                    -- could be useful for debugging purposes, maybe make this a flag?
                    -- if hex_data["name"] ~= "skip" then
                    --     print(hex_data["name"])
                    -- end
                    local res = hex_data:handler(string.sub(line, sidx, eidx), line_num)

                    if res ~= nil then
                        -- if we are defining a macro, insert a matching pattern(s) into the hexlookup
                        -- if we return values, add them to the result hex
                        if res["macro"] == true then
                            --for each table of macros
                            for t_idx, t_val in ipairs(res[1]) do
                                --for each macro in each table of macros
                                local definehex = {
                                    ["name"] = t_val["name"],
                                    ["match_pattern"] = t_val["name"],
                                    ["startDir"] = t_val["startDir"],
                                    ["angles"] = t_val["angles"],
                                    ["handler"] = h.defaulthandler
                                }
                                --insert after index of special chars (defines, includes, whitespace and comments)
                                table.insert(hexlookup, 5, definehex)
                            end
                        else
                            for h_idx, h_val in ipairs(res) do
                                table.insert(result_hex, h_val)
                            end
                        end
                    end


                    line_position = eidx + 1

                    goto continue_tokenization
                end
            end
            --if we can find no matches, error
            --want to error at level 0 so we don't display entire line
            if line_position < string.len(line) + 1 then
                error("Unrecognized token at line " .. line_num .. " character " .. line_position, 0)
            end
            ::continue_tokenization::
        end
    end
end


-- if we are saving to text file, attempt to save
if output ~= "" then
    local out_file = fs.open(output, "w")
    for idx, pattern in ipairs(result_hex) do
        local towrite = "{" .. "startDir=" .. pattern["startDir"] .. "angles=" .. pattern["angles"] .. "}"
        if idx ~= #result_hex then
            towrite = towrite .. ","
        end
        out_file.write(towrite)
    end
    out_file.close()
end

-- if we are exporting, attempt to find ducky focal port
if export then
    print("Exporting to focal port...")

    local focal_port = peripheral.find("focal_port")
    local result = focal_port.writeIota(result_hex)
    if result ~= true then
        error("Could not write to focal port!")
    end
end
