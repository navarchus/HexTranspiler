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
---@diagnostic disable-next-line: undefined-global
local file = fs.open(input, "r")
local lines = {}
while true do
  local line = file.readLine()
  if not line then break end
  lines[#lines + 1] = line
end

-- get resulting hexpattern
local result_hex = {}

for line_num, line in pairs(lines) do
    -- skip empty lines
    if string.len(line)==0 then
        goto continue_line_for_loop_result_parse
    end
    local position = 1;
    local matches = 0;
    for hex_idx, hex_data in ipairs(hexlookup) do
        if position > string.len(line)then
            break
        end
        local sidx, eidx = string.find(line, hex_data["match_pattern"], position)
        if sidx and eidx and sidx==position then
            matches = matches + 1
            -- print(hex_data["name"])
            local res=hex_data:handler(string.sub(line, sidx, eidx))
            -- if we return values, add them to the result hex
            if res ~= nil then
                for h_idx, h_val in ipairs(res) do
                    table.insert(result_hex, h_val)
                end
            end
            
            position = eidx+1
        end
    end
    if matches == 0 then
        error("No valid symbols found on line "..line_num)
    end
    ::continue_line_for_loop_result_parse::
end

-- TODO: export to text file

-- if we are exporting, attempt to find ducky focal port
if export then
    print("Exporting to focal port...")
    ---@diagnostic disable-next-line: undefined-global
    local focal_port = peripheral.find("focal_port")
    local result = focal_port.writeIota(result_hex)
    if result ~= true then
        error("Could not write to focal port!")
    end
end
