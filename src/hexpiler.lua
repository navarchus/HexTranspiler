-- Helper Fns
---@param str string
---@return boolean
local function tobool(str)
    local bool = false
    if str == "true" then
        bool = true
    end
    return bool
end


--Args:
-- --input/-i <string> : path to input file (should be in .hexpattern format: https://github.com/object-Object/vscode-hex-casting)
-- --output/-o <string> : path to output (default h.out)
-- --lut/-l <string> : hexpattern lookup table (default lut.lua)
-- --export/-e <bool> : whether to attempt to export transpiled hex to focus using ducky peripherals (default false) (https://github.com/SamsTheNerd/ducky-periphs/wiki/Focal-Port)
local argmap = {
    i = "--input",
    o = "--output",
    l = "--lut",
    e = "--export"
}

local input = ""
local output = "h.out"
local lut = "lut"
local export = false

local args = { ... }
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
        lut = param
    elseif arg == "--export" then
        export = tobool(param)
    end
end

if input == "" then error("--input <filepath> required!") end
if output == "" or lut == "" or not (export == true or export == false) then error("Invalid param set") end

-- load lookup table
local lookup = require(lut)
local hexlookup = lookup.hextable

-- load input
---@diagnostic disable-next-line: undefined-global
if not fs.exists(input) then error("Bad input path") end
local in_file = fs.open(input, "r")
local in_contents = in_file.readAll()
in_file.close()

-- get resulting hexpattern
local position = 1;
local maxlen = string.len(in_contents)
local result_hex = {}
while position < maxlen do
    for pattern_name, hexdata in pairs(hexlookup) do
        local sidx, eidx = string.find(in_contents, hexdata["match_pattern"], position)
        if sidx ~=nil and eidx ~=nil then
            print(pattern_name)
            local res = hexdata:handler(string.sub(in_contents, sidx, eidx))
            if res ~= nil then
                table.insert(result_hex, res)
            end
            position = eidx+1
        end
    end
end



-- if we are exporting, attempt to find ducky focal port
if export then
    print("Exporting to focal port...")
---@diagnostic disable-next-line: undefined-global
    local focal_port = peripheral.find("focal_port")
    focal_port.writeIota(result_hex)
end
