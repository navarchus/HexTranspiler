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

local function defaulthandler(self, _match)
    return { [1] = { ["startDir"] = self["start_dir"], ["angles"] = self["angles"] } }
end

local function nilhandler(self, _match)
    return nil
end

local function bookkeeperhandler(self, match)
    local startDir = ""
    local angles = ""
    local keeper_arguments = string.match(match, "[-v]+")

    if keeper_arguments == nil then
        error("Must provide at least one argument for Bookkeeper's Gambit")
    end

    -- figure out starting direction
    local start = string.sub(keeper_arguments, 1, 1)
    if start == "v" then
        startDir = "SOUTH_EAST"
        angles = angles .. "a"
    elseif start == "-" then
        startDir = "EAST"
    else
        error("Invalid bookkeper's argument: " .. start)
    end
    for i = 2, #keeper_arguments do
        local curr = keeper_arguments:sub(i, i)
        local prev = keeper_arguments:sub(i - 1, i - 1)

        if curr ~= "-" and curr ~= "v" then
            error("Invalid bookkeper's argument: " .. curr)
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

local function numhandler(self, match)
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

    local sign, whole, fraction = string.match(match, "(-?)([%d]+)[.]?([%d]*)")

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

        local extra_divisor_symbols = calc_num(0, 10 ^ string.len(fraction), "")
        calc_divisor["angles"] = calc_divisor["angles"] .. extra_divisor_symbols

        return { [1] = calc_whole, [2] = calc_fraction, [3] = calc_divisor, [4] = divide_pat, [5] = add_pat }
    else
        --we can just return whole number
        return { [1] = calc_whole }
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
    [16] = {
        ["name"] = "additive-distillation",
        ["match_pattern"] = "Additive Distillation",
        ["startDir"] = "NORTH_EAST",
        ["angles"] = "waaw",
        ["handler"] = defaulthandler
    },
    [17] = {
        ["name"] = "subtractive-distillation",
        ["match_pattern"] = "Subtractive Distillation",
        ["startDir"] = "NORTH_WEST",
        ["angles"] = "wddw",
        ["handler"] = defaulthandler
    },
    [18] = {
        ["name"] = "division-distillation",
        ["match_pattern"] = "Division Distillation",
        ["startDir"] = "NORTH_EAST",
        ["angles"] = "wdedw",
        ["handler"] = defaulthandler
    },
    [19] = {
        ["name"] = "length-purification",
        ["match_pattern"] = "Length Purification",
        ["startDir"] = "NORTH_EAST",
        ["angles"] = "wqaqw",
        ["handler"] = defaulthandler
    },
    [20] = {
        ["name"] = "power-distillation",
        ["match_pattern"] = "Power Distillation",
        ["startDir"] = "NORTH_WEST",
        ["angles"] = "wedew",
        ["handler"] = defaulthandler
    },
    [21] = {
        ["name"] = "floor-purification",
        ["match_pattern"] = "Floor Purification",
        ["startDir"] = "EAST",
        ["angles"] = "ewq",
        ["handler"] = defaulthandler
    },
    [22] = {
        ["name"] = "ceiling-purification",
        ["match_pattern"] = "Ceiling Purification",
        ["startDir"] = "EAST",
        ["angles"] = "qwe",
        ["handler"] = defaulthandler
    },
    [23] = {
        ["name"] = "vector-exaltation",
        ["match_pattern"] = "Vector Exaltation",
        ["startDir"] = "EAST",
        ["angles"] = "eqqqqq",
        ["handler"] = defaulthandler
    },
    [24] = {
        ["name"] = "vector-disentegration",
        ["match_pattern"] = "Vector Disintegration",
        ["startDir"] = "EAST",
        ["angles"] = "qeeeee",
        ["handler"] = defaulthandler
    },
    [25] = {
        ["name"] = "modulus-distillation",
        ["match_pattern"] = "Modulus Distillation",
        ["startDir"] = "NORTH_EAST",
        ["angles"] = "addwaad",
        ["handler"] = defaulthandler
    },
    [26] = {
        ["name"] = "axial-purification",
        ["match_pattern"] = "Axial Purification",
        ["startDir"] = "NORTH_WEST",
        ["angles"] = "qqqqqaww",
        ["handler"] = defaulthandler
    },
    [27] = {
        ["name"] = "entropy-reflection",
        ["match_pattern"] = "Entropy Reflection",
        ["startDir"] = "NORTH_WEST",
        ["angles"] = "eqqq",
        ["handler"] = defaulthandler
    },
    [28] = {
        ["name"] = "entropy-reflection",
        ["match_pattern"] = "Entropy Reflection",
        ["startDir"] = "NORTH_WEST",
        ["angles"] = "eqqq",
        ["handler"] = defaulthandler
    },
    [29] = {
        ["name"] = "true-reflection",
        ["match_pattern"] = "True Reflection",
        ["startDir"] = "SOUTH_EAST",
        ["angles"] = "aqae",
        ["handler"] = defaulthandler
    },
    [30] = {
        ["name"] = "false-reflection",
        ["match_pattern"] = "False Reflection",
        ["startDir"] = "NORTH_EAST",
        ["angles"] = "dedq",
        ["handler"] = defaulthandler
    },
    [31] = {
        ["name"] = "nullary-reflection",
        ["match_pattern"] = "Nullary Reflection",
        ["startDir"] = "EAST",
        ["angles"] = "d",
        ["handler"] = defaulthandler
    },
    [32] = {
        ["name"] = "vector-reflection-zero",
        ["match_pattern"] = "Vector Reflection Zero",
        ["startDir"] = "NORTH_WEST",
        ["angles"] = "qqqqq",
        ["handler"] = defaulthandler
    },
    [33] = {
        ["name"] = "vector-reflection-plus-x",
        ["match_pattern"] = "Vector Reflection +X",
        ["startDir"] = "NORTH_WEST",
        ["angles"] = "qqqqqea",
        ["handler"] = defaulthandler
    },
    [34] = {
        ["name"] = "vector-reflection-minus-x",
        ["match_pattern"] = "Vector Reflection -X",
        ["startDir"] = "SOUTH_WEST",
        ["angles"] = "eeeeeqa",
        ["handler"] = defaulthandler
    },
    [35] = {
        ["name"] = "vector-reflection-plus-y",
        ["match_pattern"] = "Vector Reflection +Y",
        ["startDir"] = "NORTH_WEST",
        ["angles"] = "qqqqqew",
        ["handler"] = defaulthandler
    },
    [36] = {
        ["name"] = "vector-reflection-minus-y",
        ["match_pattern"] = "Vector Reflection -Y",
        ["startDir"] = "SOUTH_WEST",
        ["angles"] = "eeeeeqw",
        ["handler"] = defaulthandler
    },
    [37] = {
        ["name"] = "vector-reflection-plus-z",
        ["match_pattern"] = "Vector Reflection +Z",
        ["startDir"] = "NORTH_WEST",
        ["angles"] = "qqqqqed",
        ["handler"] = defaulthandler
    },
    [38] = {
        ["name"] = "vector-reflection-minus-z",
        ["match_pattern"] = "Vector Reflection -Z",
        ["startDir"] = "SOUTH_WEST",
        ["angles"] = "eeeeeqd",
        ["handler"] = defaulthandler
    },
    [39] = {
        ["name"] = "circles-reflection",
        ["match_pattern"] = "Circle's Reflection",
        ["startDir"] = "NORTH_WEST",
        ["angles"] = "eawae",
        ["handler"] = defaulthandler
    },
    [40] = {
        ["name"] = "arcs-reflection",
        ["match_pattern"] = "Arc's Reflection",
        ["startDir"] = "NORTH_EAST",
        ["angles"] = "qdwdq",
        ["handler"] = defaulthandler
    },
    [41] = {
        ["name"] = "eulers-reflection",
        ["match_pattern"] = "Euler's Reflection",
        ["startDir"] = "EAST",
        ["angles"] = "aaq",
        ["handler"] = defaulthandler
    },
    [42] = {
        ["name"] = "novices-gambit",
        ["match_pattern"] = "Novice's Gambit",
        ["startDir"] = "SOUTH_EAST",
        ["angles"] = "a",
        ["handler"] = defaulthandler
    },
    [43] = {
        ["name"] = "jesters-gambit",
        ["match_pattern"] = "Jester's Gambit",
        ["startDir"] = "EAST",
        ["angles"] = "aawdd",
        ["handler"] = defaulthandler
    },
    -- these need to be in this exact order vv
    [44] = {
        ["name"] = "rotation-gambit-II",
        ["match_pattern"] = "Rotation Gambit II",
        ["startDir"] = "NORTH_EAST",
        ["angles"] = "ddqdd",
        ["handler"] = defaulthandler
    },
    [45] = {
        ["name"] = "rotation-gambit",
        ["match_pattern"] = "Rotation Gambit",
        ["startDir"] = "EAST",
        ["angles"] = "aaeaa",
        ["handler"] = defaulthandler
    },
    -- these need to be in this exact order ^^
    [46] = {
        ["name"] = "gemini-decompositon",
        ["match_pattern"] = "Gemini Decomposition",
        ["startDir"] = "EAST",
        ["angles"] = "aadaa",
        ["handler"] = defaulthandler
    },
    [47] = {
        ["name"] = "prospectors-gambit",
        ["match_pattern"] = "Prospector's Gambit",
        ["startDir"] = "EAST",
        ["angles"] = "aaedd",
        ["handler"] = defaulthandler
    },
    [48] = {
        ["name"] = "undertakers-gambit",
        ["match_pattern"] = "Undertaker's Gambit",
        ["startDir"] = "EAST",
        ["angles"] = "ddqaa",
        ["handler"] = defaulthandler
    },
    [49] = {
        ["name"] = "gemini-gambit",
        ["match_pattern"] = "Gemini Gambit",
        ["startDir"] = "EAST",
        ["angles"] = "aadaadaa",
        ["handler"] = defaulthandler
    },
    [50] = {
        ["name"] = "dioscuri-gambit",
        ["match_pattern"] = "Dioscuri Gambit",
        ["startDir"] = "EAST",
        ["angles"] = "aadadaaw",
        ["handler"] = defaulthandler
    },
    [51] = {
        ["name"] = "flocks-reflection",
        ["match_pattern"] = "Flock's Reflection",
        ["startDir"] = "NORTH_WEST",
        ["angles"] = "qwaeawqaeaqa",
        ["handler"] = defaulthandler
    },
    -- these need to be in this exact order vv
    [52] = {
        ["name"] = "fishermans-gambit-ii",
        ["match_pattern"] = "Fisherman's Gambit II",
        ["startDir"] = "EAST",
        ["angles"] = "aada",
        ["handler"] = defaulthandler
    },
    [53] = {
        ["name"] = "fishermans-gambit",
        ["match_pattern"] = "Fisherman's Gambit",
        ["startDir"] = "WEST",
        ["angles"] = "ddad",
        ["handler"] = defaulthandler
    },
    -- these need to be in this exact order ^^
    [54] = {
        ["name"] = "bookkeepers-gambit",
        ["match_pattern"] = "Bookkeeper's Gambit:[%s]*[-v]+",
        ["handler"] = bookkeeperhandler
    },
    [55] = {
        ["name"] = "swindlers-gambit",
        ["match_pattern"] = "Swindler's Gambit",
        ["startDir"] = "SOUTH_EAST",
        ["angles"] = "qaawdde",
        ["handler"] = bookkeeperhandler
    },
    [56] = {
        ["name"] = "augurs-purification",
        ["match_pattern"] = "Augur's Purification",
        ["startDir"] = "NORTH_EAST",
        ["angles"] = "aw",
        ["handler"] = defaulthandler
    },
    [57] = {
        ["name"] = "negation-purification",
        ["match_pattern"] = "Negation Purification",
        ["startDir"] = "NORTH_WEST",
        ["angles"] = "dw",
        ["handler"] = defaulthandler
    },
    [58] = {
        ["name"] = "disjunction-distillation",
        ["match_pattern"] = "Disjunction Distillation",
        ["startDir"] = "SOUTH_EAST",
        ["angles"] = "waw",
        ["handler"] = defaulthandler
    },
    [59] = {
        ["name"] = "conjunction-distillation",
        ["match_pattern"] = "Conjunction Distillation",
        ["startDir"] = "NORTH_EAST",
        ["angles"] = "wdw",
        ["handler"] = defaulthandler
    },
    [60] = {
        ["name"] = "exclusion-distillation",
        ["match_pattern"] = "Exclusion Distillation",
        ["startDir"] = "NORTH_WEST",
        ["angles"] = "dwa",
        ["handler"] = defaulthandler
    },
    [61] = {
        ["name"] = "augurs-exaltation",
        ["match_pattern"] = "Augur's Exaltation",
        ["startDir"] = "SOUTH_EAST",
        ["angles"] = "awdd",
        ["handler"] = defaulthandler
    },
    -- these need to be in this exact order vv
    [62] = {
        ["name"] = "inequality-distillation",
        ["match_pattern"] = "Inequality Distillation",
        ["startDir"] = "EAST",
        ["angles"] = "da",
        ["handler"] = defaulthandler
    },
    [63] = {
        ["name"] = "equality-distillation",
        ["match_pattern"] = "Equality Distillation",
        ["startDir"] = "EAST",
        ["angles"] = "ad",
        ["handler"] = defaulthandler
    },
    -- these need to be in this exact order ^^
    -- these need to be in this exact order vv
    [64] = {
        ["name"] = "maximus-distillation-ii",
        ["match_pattern"] = "Maximus Distillation II",
        ["startDir"] = "SOUTH_EAST",
        ["angles"] = "ee",
        ["handler"] = defaulthandler
    },
    [65] = {
        ["name"] = "maximus-distillation",
        ["match_pattern"] = "Maximus Distillation",
        ["startDir"] = "SOUTH_EAST",
        ["angles"] = "e",
        ["handler"] = defaulthandler
    },
    -- these need to be in this exact order ^^
    -- these need to be in this exact order vv
    [66] = {
        ["name"] = "minimus-distillation-ii",
        ["match_pattern"] = "Minimus Distillation II",
        ["startDir"] = "SOUTH_WEST",
        ["angles"] = "qq",
        ["handler"] = defaulthandler
    },
    [67] = {
        ["name"] = "minimus-distillation",
        ["match_pattern"] = "Minimus Distillation",
        ["startDir"] = "SOUTH_WEST",
        ["angles"] = "q",
        ["handler"] = defaulthandler
    },
    -- these need to be in this exact order ^^
    -- these need to be in this exact order vv
    [68] = {
        ["name"] = "entity-purification-animal",
        ["match_pattern"] = "Entity Purification: Animal",
        ["startDir"] = "SOUTH_EAST",
        ["angles"] = "qqqqqdaqaawa",
        ["handler"] = defaulthandler
    },
    [69] = {
        ["name"] = "entity-purification-monster",
        ["match_pattern"] = "Entity Purification: Monster",
        ["startDir"] = "SOUTH_EAST",
        ["angles"] = "qqqqqdaqaawq",
        ["handler"] = defaulthandler
    },
    [70] = {
        ["name"] = "entity-purification-item",
        ["match_pattern"] = "Entity Purification: Item",
        ["startDir"] = "SOUTH_EAST",
        ["angles"] = "qqqqqdaqaaww",
        ["handler"] = defaulthandler
    },
    [71] = {
        ["name"] = "entity-purification-player",
        ["match_pattern"] = "Entity Purification: Player",
        ["startDir"] = "SOUTH_EAST",
        ["angles"] = "qqqqqdaqaawe",
        ["handler"] = defaulthandler
    },
    [72] = {
        ["name"] = "entity-purification-living",
        ["match_pattern"] = "Entity Purification: Living",
        ["startDir"] = "SOUTH_EAST",
        ["angles"] = "qqqqqdaqaawd",
        ["handler"] = defaulthandler
    },
    [73] = {
        ["name"] = "entity-purification",
        ["match_pattern"] = "Entity Purification",
        ["startDir"] = "SOUTH_EAST",
        ["angles"] = "qqqqqdaqa",
        ["handler"] = defaulthandler
    },
    -- these need to be in this exact order ^^
    [74] = {
        ["name"] = "zone-distillation-animal",
        ["match_pattern"] = "Zone Distillation: Animal",
        ["startDir"] = "SOUTH_EAST",
        ["angles"] = "qqqqqwdeddwa",
        ["handler"] = defaulthandler
    },
    [75] = {
        ["name"] = "zone-distillation-non-animal",
        ["match_pattern"] = "Zone Distillation: Non-Animal",
        ["startDir"] = "NORTH_EAST",
        ["angles"] = "eeeeewaqaawa",
        ["handler"] = defaulthandler
    },
    [76] = {
        ["name"] = "zone-distillation-monster",
        ["match_pattern"] = "Zone Distillation: Monster",
        ["startDir"] = "SOUTH_EAST",
        ["angles"] = "qqqqqwdeddwq",
        ["handler"] = defaulthandler
    },
    [77] = {
        ["name"] = "zone-distillation-non-monster",
        ["match_pattern"] = "Zone Distillation: Non-Monster",
        ["startDir"] = "NORTH_EAST",
        ["angles"] = "eeeeewaqaawq",
        ["handler"] = defaulthandler
    },
    [78] = {
        ["name"] = "zone-distillation-item",
        ["match_pattern"] = "Zone Distillation: Item",
        ["startDir"] = "SOUTH_EAST",
        ["angles"] = "qqqqqwdeddww",
        ["handler"] = defaulthandler
    },
    [79] = {
        ["name"] = "zone-distillation-non-item",
        ["match_pattern"] = "Zone Distillation: Non-Item",
        ["startDir"] = "NORTH_EAST",
        ["angles"] = "eeeeewaqaaww",
        ["handler"] = defaulthandler
    },
    [80] = {
        ["name"] = "zone-distillation-player",
        ["match_pattern"] = "Zone Distillation: Player",
        ["startDir"] = "SOUTH_EAST",
        ["angles"] = "qqqqqwdeddwe",
        ["handler"] = defaulthandler
    },
    [81] = {
        ["name"] = "zone-distillation-non-player",
        ["match_pattern"] = "Zone Distillation: Non-Player",
        ["startDir"] = "NORTH_EAST",
        ["angles"] = "eeeeewaqaawe",
        ["handler"] = defaulthandler
    },
    [82] = {
        ["name"] = "zone-distillation-living",
        ["match_pattern"] = "Zone Distillation: Living",
        ["startDir"] = "SOUTH_EAST",
        ["angles"] = "qqqqqwdeddwd",
        ["handler"] = defaulthandler
    },
    [83] = {
        ["name"] = "zone-distillation-non-living",
        ["match_pattern"] = "Zone Distillation: Non-Living",
        ["startDir"] = "NORTH_EAST",
        ["angles"] = "eeeeewaqaawd",
        ["handler"] = defaulthandler
    },
    [84] = {
        ["name"] = "zone-distillation-any",
        ["match_pattern"] = "Zone Distillation: Any",
        ["startDir"] = "SOUTH_EAST",
        ["angles"] = "qqqqqwded",
        ["handler"] = defaulthandler
    },
    [85] = {
        ["name"] = "selection-distillation",
        ["match_pattern"] = "Selection Distillation",
        ["startDir"] = "NORTH_WEST",
        ["angles"] = "deeed",
        ["handler"] = defaulthandler
    },
    [86] = {
        ["name"] = "selection-exaltation",
        ["match_pattern"] = "Selection Exaltation",
        ["startDir"] = "NORTH_WEST",
        ["angles"] = "qaeaqwded",
        ["handler"] = defaulthandler
    },
    [87] = {
        ["name"] = "integration-distillation",
        ["match_pattern"] = "Integration Distillation",
        ["startDir"] = "SOUTH_WEST",
        ["angles"] = "edqde",
        ["handler"] = defaulthandler
    },
    [88] = {
        ["name"] = "derivation-decompositon",
        ["match_pattern"] = "Derivation Decomposition",
        ["startDir"] = "NORTH_WEST",
        ["angles"] = "qaeaq",
        ["handler"] = defaulthandler
    },
    [89] = {
        ["name"] = "vacant-reflection",
        ["match_pattern"] = "Vacant Reflection",
        ["startDir"] = "NORTH_EAST",
        ["angles"] = "qqaeaae",
        ["handler"] = defaulthandler
    },
    [90] = {
        ["name"] = "single's-purification",
        ["match_pattern"] = "Single's Purification",
        ["startDir"] = "EAST",
        ["angles"] = "adeeed",
        ["handler"] = defaulthandler
    },
    [91] = {
        ["name"] = "retrograde-purification",
        ["match_pattern"] = "Retrograde Purification",
        ["startDir"] = "EAST",
        ["angles"] = "qqqaede",
        ["handler"] = defaulthandler
    },
    [92] = {
        ["name"] = "locators-distillation",
        ["match_pattern"] = "Locator's Distillation",
        ["startDir"] = "EAST",
        ["angles"] = "dedqde",
        ["handler"] = defaulthandler
    },
    [93] = {
        ["name"] = "excisors-distillation",
        ["match_pattern"] = "Excisor's Distillation",
        ["startDir"] = "SOUTH_WEST",
        ["angles"] = "edqdewaqa",
        ["handler"] = defaulthandler
    },
    [94] = {
        ["name"] = "surgeons-exaltation",
        ["match_pattern"] = "Surgeon's Exaltation",
        ["startDir"] = "NORTH_WEST",
        ["angles"] = "wqaeaqw",
        ["handler"] = defaulthandler
    },
    [95] = {
        ["name"] = "flocks-gambit",
        ["match_pattern"] = "Flock's Gambit",
        ["startDir"] = "SOUTH_WEST",
        ["angles"] = "ewdqdwe",
        ["handler"] = defaulthandler
    },
    [96] = {
        ["name"] = "flocks-disintegration",
        ["match_pattern"] = "Flock's Disintegration",
        ["startDir"] = "NORTH_WEST",
        ["angles"] = "qwaeawq",
        ["handler"] = defaulthandler
    },
    [97] = {
        ["name"] = "speakers-distillation",
        ["match_pattern"] = "Speaker's Distillation",
        ["startDir"] = "SOUTH_EAST",
        ["angles"] = "ddewedd",
        ["handler"] = defaulthandler
    },
    [98] = {
        ["name"] = "speakers-decomposition",
        ["match_pattern"] = "Speaker's Decomposition",
        ["startDir"] = "SOUTH_WEST",
        ["angles"] = "aaqwqaa",
        ["handler"] = defaulthandler
    },
    -- these need to be in this exact order vv
    [99] = {
        ["name"] = "consideration-colon",
        ["match_pattern"] = "Consideration:",
        ["startDir"] = "WEST",
        ["angles"] = "qqqaw",
        ["handler"] = defaulthandler
    },
    [100] = {
        ["name"] = "consideration",
        ["match_pattern"] = "Consideration",
        ["startDir"] = "WEST",
        ["angles"] = "qqqaw",
        ["handler"] = defaulthandler
    },
    -- these need to be in this exact order ^^
    [101] = {
        ["name"] = "evanition",
        ["match_pattern"] = "Evanition",
        ["startDir"] = "EAST",
        ["angles"] = "eeedw",
        ["handler"] = defaulthandler
    },
    --left off at reading/writing
}

return { hextable = hextable }
