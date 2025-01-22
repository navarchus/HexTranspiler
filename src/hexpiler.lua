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
local lines = {}
for line in io.lines(input) do
    -- TODO! #define and #include macros
    -- error if we encounter #define or include
    if string.match(line, ".*#define.*") or string.match(line, ".*#include.*") then
        error("TODO: implement #define and #include macros")
    end
    -- don't push empty whitespace and comments
    if not string.match(line, "^[%s]$") and not string.match(line, "^//.*$") and not string.match(line, "^$") then
        table.insert(lines, line)
    end
end

-- get resulting hexpattern
local result_hex = nil
if #lines == 1 then
    --special case for if we want to write a hex with only one iota
    for pattern, hex_data in pairs(hexlookup) do
        if string.match(lines[1], pattern) then
            result_hex = hex_data:handler()
            -- break out of for loop
            goto outer_break_single_iota
        end
    end
    ::outer_break_single_iota::
else
    result_hex = {}
    -- get matches in LUT and handle matching cases
    for line_num, line in ipairs(lines) do
        if line_num == 1 then
            -- check for introspection
            if not line:match "[%s]*{[%s]*" then
                error("Expected { at line: "..line_num)
            end
            -- continue
            goto outer_continue_list_iota
        end

        if line_num == #lines then
            -- check for retrospection
            if not line:match "[%s]*}[%s]*" then
                error("Expected } at line: "..line_num)
            end
            -- continue
            goto outer_continue_list_iota
        end

        for pattern, hex_data in pairs(hexlookup) do
            if string.match(line, pattern) then
                table.insert(result_hex, hex_data:handler(line))
                -- break out of inner for loop
                goto outer_continue_list_iota
            end
        end

        ::outer_continue_list_iota::
    end
end

-- if we are exporting, attempt to find ducky focal port
if export then
    print("Exporting to focal port...")
---@diagnostic disable-next-line: undefined-global
    local focal_port = peripheral.find("focal_port")
    focal_port.writeIota(result_hex)
end
