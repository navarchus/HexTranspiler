local h = require("handlers.hexhandlers")

local hextable = {}

table.insert(hextable, {
    ["name"] = "phase-block",
    ["match_pattern"] = "Phase Block",
    ["startDir"] = "WEST",
    ["angles"] = "daqqqa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "timekeepers-reflection",
    ["match_pattern"] = "Timekeeper's Reflection",
    ["startDir"] = "WEST",
    ["angles"] = "ddwaa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "divers-purification",
    ["match_pattern"] = "Diver's Purification",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "aqawdwaqawd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "nurses-purification",
    ["match_pattern"] = "Nurse's Purification",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "aqwawqa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "squires-purification",
    ["match_pattern"] = "Squire's Purification",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "wqqqqw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "boxer-purification",
    ["match_pattern"] = "Boxer's Purification",
    ["startDir"] = "EAST",
    ["angles"] = "aeqqqqea",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "lamplighters-purification",
    ["match_pattern"] = "Lamplighter's Purification",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qedqde",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "factorial-purification",
    ["match_pattern"] = "Factorial Purification",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "wawdedwaw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "running-sum-purification",
    ["match_pattern"] = "Running Sum Purification",
    ["startDir"] = "WEST",
    ["angles"] = "aea",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "running-product-purification",
    ["match_pattern"] = "Running Product Purification",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaawaaq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "classifiers-purification",
    ["match_pattern"] = "Classifier's Purification",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "awd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "physicians-purification",
    ["match_pattern"] = "Physician's Purification",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "qawde",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "sorters-purification",
    ["match_pattern"] = "Sorter's Purification",
    ["startDir"] = "EAST",
    ["angles"] = "qaqqaea",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "sorters-reflection",
    ["match_pattern"] = "Sorter's Reflection",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "edeedqd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "entity-distillation-type",
    ["match_pattern"] = "Entity Distillation: Type",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "dadqqqqqdad",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "zone-exaltation-type",
    ["match_pattern"] = "Zone Exaltation: Type",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "waweeeeewaw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "zone-exaltation-not-type",
    ["match_pattern"] = "Zone Exaltation: Not Type",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "wdwqqqqqwdw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "mnemosynes-gambit",
    ["match_pattern"] = "Mnemosyne's Gambit",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "eweeewedqdeddw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "elysiums-gambit",
    ["match_pattern"] = "Elysium's Gambit",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qwqqqwqaeaqaaw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "lethes-gambit",
    ["match_pattern"] = "Lethe's Gambit",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qwqqqwqaww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "brighs-gambit",
    ["match_pattern"] = "Brigh's Gambit",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "eweeewedww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "smelt",
    ["match_pattern"] = "Smelt",
    ["startDir"] = "EAST",
    ["angles"] = "wqqqwqqadad",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "freeze",
    ["match_pattern"] = "Freeze",
    ["startDir"] = "WEST",
    ["angles"] = "weeeweedada",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "falling-block",
    ["match_pattern"] = "Falling Block",
    ["startDir"] = "EAST",
    ["angles"] = "wqwawqwqwqwqwqw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "place-block-ii",
    ["match_pattern"] = "Place Block II",
    ["startDir"] = "WEST",
    ["angles"] = "eeeeedeeeee",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "particles",
    ["match_pattern"] = "Particles",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "eqqqqa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "summon-projectile-wisp",
    ["match_pattern"] = "Summon Projectile Wisp",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "aqaeqeeeee",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "summon-cyclic-wisp",
    ["match_pattern"] = "Summon Cyclic Wisp",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "aqaweewaqawee",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "identity-reflection",
    ["match_pattern"] = "Identity Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "dedwqqwdedwqqaw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "reservoir-reflection",
    ["match_pattern"] = "Reservoir Reflection",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "aqaweewaqaweedw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "managers-purification",
    ["match_pattern"] = "Manager's Purification",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "aweewaqaweewaawww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "allegiance-distillation",
    ["match_pattern"] = "Allegiance Distillation",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "dwqqwdedwqqwddwww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "pathfinders-gambit",
    ["match_pattern"] = "Pathfinder's Gambit",
    ["startDir"] = "WEST",
    ["angles"] = "awqwawqaw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "pathfinders-reflection",
    ["match_pattern"] = "Pathfinder's Reflection",
    ["startDir"] = "EAST",
    ["angles"] = "ewdwewdew",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "haste",
    ["match_pattern"] = "Haste",
    ["startDir"] = "WEST",
    ["angles"] = "aeawqqqae",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "speedometers-reflection",
    ["match_pattern"] = "Speedometer's Reflection",
    ["startDir"] = "EAST",
    ["angles"] = "eeewdqdee",
    ["handler"] = h.defaulthandler
})
-- should be in this order vv
table.insert(hextable, {
    ["name"] = "disallow-transfer-others",
    ["match_pattern"] = "Disallow Transfer Others",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "eeeeeqeaqaawqeeeee",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "allow-transfer-others",
    ["match_pattern"] = "Allow Transfer Others",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "eeeeeqwweqqqqq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "disallow-transfer",
    ["match_pattern"] = "Disallow Transfer",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "qqqqqeqdeddweqqqqq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "allow-transfer",
    ["match_pattern"] = "Allow Transfer",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "qqqqqewwqeeeee",
    ["handler"] = h.defaulthandler
})
-- should be in this order ^^
table.insert(hextable, {
    ["name"] = "entity-purification-wisp",
    ["match_pattern"] = "Entity Purification: Wisp",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqwdedwqqdaqaaww",
    ["handler"] = h.defaulthandler
})
-- should be in this order vv
table.insert(hextable, {
    ["name"] = "zone-distillation-non-wisp",
    ["match_pattern"] = "Zone Distillation: Non-Wisp",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "eewaqaweewaqaaww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "zone-distillation-wisp",
    ["match_pattern"] = "Zone Distillation: Wisp",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqwdedwqqwdeddww",
    ["handler"] = h.defaulthandler
})
-- should be in this order ^^
table.insert(hextable, {
    ["name"] = "delay-wisp",
    ["match_pattern"] = "Delay Wisp",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "aqawded",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "listen",
    ["match_pattern"] = "Listen",
    ["startDir"] = "EAST",
    ["angles"] = "aqqqqqwdeddw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "wander",
    ["match_pattern"] = "Wander",
    ["startDir"] = "EAST",
    ["angles"] = "eqwawqwaqww",
    ["handler"] = h.defaulthandler
})
-- should be in this order vv
table.insert(hextable, {
    ["name"] = "unlink-others",
    ["match_pattern"] = "Unlink-Others",
    ["startDir"] = "West",
    ["angles"] = "qeeeeedweqqqqqaww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "unlink",
    ["match_pattern"] = "Unlink",
    ["startDir"] = "West",
    ["angles"] = "qdeddqeeeeedwqdeddw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "link-others",
    ["match_pattern"] = "Link Others",
    ["startDir"] = "EAST",
    ["angles"] = "eqqqqqawqeeeeedww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "link",
    ["match_pattern"] = "Link",
    ["startDir"] = "EAST",
    ["angles"] = "eaqaaeqqqqqaweaqaaw",
    ["handler"] = h.defaulthandler
})
-- should be in this order ^^
table.insert(hextable, {
    ["name"] = "phonebook-purification",
    ["match_pattern"] = "Phonebook Purification",
    ["startDir"] = "EAST",
    ["angles"] = "eqqqqqaww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "recognition-purification",
    ["match_pattern"] = "Recognition Purification",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "aeqqqqqawwd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "popularity-reflection",
    ["match_pattern"] = "Popularity Reflection",
    ["startDir"] = "WEST",
    ["angles"] = "qeeeeedww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "send-iota",
    ["match_pattern"] = "Send Iota",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "qqqqqwdeddw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "recitation-reflection",
    ["match_pattern"] = "Recitation Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "weeeeew",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "postmasters-reflection",
    ["match_pattern"] = "Postmaster's Reflection",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "aweeeeewaa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "unclogging-gambit",
    ["match_pattern"] = "Unclogging Gambit",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "aweeeeewa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "open-transmit",
    ["match_pattern"] = "Open Transmit",
    ["startDir"] = "WEST",
    ["angles"] = "qwdedwq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "close-transmit",
    ["match_pattern"] = "Close Transmit",
    ["startDir"] = "EAST",
    ["angles"] = "ewaqawe",
    ["handler"] = h.defaulthandler
})
-- should be in this order vv
table.insert(hextable, {
    ["name"] = "bind-storage-temporary",
    ["match_pattern"] = "Bind Storage - Temporary",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "edewedewede",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "bind-storage",
    ["match_pattern"] = "Bind Storage",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "qaqwqaqwqaq",
    ["handler"] = h.defaulthandler
})
-- should be in this order ^^
table.insert(hextable, {
    ["name"] = "stocktake-reflection",
    ["match_pattern"] = "Stocktake Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "dwqqqqqwddww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "stocktake-purification",
    ["match_pattern"] = "Stocktake Purification",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "aweeeeewaaww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "capacity-reflection",
    ["match_pattern"] = "Capacity Reflection",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "awedqdewa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "containment-distillation",
    ["match_pattern"] = "Containment Distillation",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "dwqaeaqwd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "mediafy-item",
    ["match_pattern"] = "Mediafy Item",
    ["startDir"] = "WEST",
    ["angles"] = "eaqa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "return-item",
    ["match_pattern"] = "Return Item",
    ["startDir"] = "EAST",
    ["angles"] = "qded",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "weighing-purification",
    ["match_pattern"] = "Weighing Purification",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "qqqqwqqqqqaa",
    ["handler"] = h.defaulthandler
})
-- should be in this order vv
table.insert(hextable, {
    ["name"] = "stacking-distillation-ii",
    ["match_pattern"] = "Stacking Distillation II",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "dedqeaqa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "stacking-distillation",
    ["match_pattern"] = "Stacking Distillation",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "aqaeqded",
    ["handler"] = h.defaulthandler
})
-- should be in this order ^^
table.insert(hextable, {
    ["name"] = "splitting-gambit",
    ["match_pattern"] = "Splitting Gambit",
    ["startDir"] = "EAST",
    ["angles"] = "eaqaaw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "depot-purification",
    ["match_pattern"] = "Depot Purification",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "qqqqqaw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "depot-gambit",
    ["match_pattern"] = "Depot Gambit",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "eeeeedw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "craft",
    ["match_pattern"] = "Craft",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "wwawdedwawdewwdwaqawdwwedwawdedwaww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "seniority-purification",
    ["match_pattern"] = "Seniority Purification",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "qqwdedwqqaww",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "offering-purification",
    ["match_pattern"] = "Offering Purification",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "awdedwaawwqded",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "trade",
    ["match_pattern"] = "Trade",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "awdedwaeqded",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "use-item-on",
    ["match_pattern"] = "Use Item On",
    ["startDir"] = "EAST",
    ["angles"] = "qqqwqqqqaa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "accelerate",
    ["match_pattern"] = "Accelerate",
    ["handler"] = h.greatspellhandler
})
table.insert(hextable, {
    ["name"] = "consume-wisp",
    ["match_pattern"] = "Consume Wisp",
    ["handler"] = h.greatspellhandler
})
table.insert(hextable, {
    ["name"] = "bind-wisp",
    ["match_pattern"] = "Bind Wisp",
    ["handler"] = h.greatspellhandler
})
table.insert(hextable, {
    ["name"] = "familiars-reflection",
    ["match_pattern"] = "Familiar's Reflection",
    ["handler"] = h.greatspellhandler
})
table.insert(hextable, {
    ["name"] = "gates-reflection",
    ["match_pattern"] = "Gate's Reflection",
    ["handler"] = h.greatspellhandler
})
table.insert(hextable, {
    ["name"] = "gates-Dismissal",
    ["match_pattern"] = "Gate's Opening",
    ["startDir"] = "WEST",
    ["angles"] = "qaqeede",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "gates-dismissal",
    ["match_pattern"] = "Gate's Dismissal",
    ["startDir"] = "EAST",
    ["angles"] = "edeqqaq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "marked-purification",
    ["match_pattern"] = "Marked Purification",
    ["startDir"] = "WEST",
    ["angles"] = "qawwaqqqaq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "marked-distillation",
    ["match_pattern"] = "Marked Distillation",
    ["startDir"] = "EAST",
    ["angles"] = "edwwdeeede",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "gates-closing",
    ["match_pattern"] = "Gate's Closing",
    ["startDir"] = "WEST",
    ["angles"] = "qqqwwqqqwqqawdedw",
    ["handler"] = h.defaulthandler
})
return {hextable = hextable}