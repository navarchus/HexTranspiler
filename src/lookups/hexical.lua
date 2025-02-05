local h = require("handlers.hexhandlers")
local hexicalhandlers = require("handlers.hexicalhandlers")


local hextable = {}
-- these need to be first vv
table.insert(hextable, {
    ["name"] = "archgenie-purification",
    ["match_pattern"] = "Archgenie Purification",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqwddedqeed",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "archgenie-reflection-spatial",
    ["match_pattern"] = "Archgenie Reflection: Spatial",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqwddedqdd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "archgenie-reflection-rotational",
    ["match_pattern"] = "Archgenie Reflection: Rotational",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqwddedadw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "archgenie-reflection-kinetic",
    ["match_pattern"] = "Archgenie Reflection: Kinetic",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqwddedqew",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "archgenie-reflection-temporal",
    ["match_pattern"] = "Archgenie Reflection: Temporal",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqwddedqwddwa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "archgenie-reflection-media",
    ["match_pattern"] = "Archgenie Reflection: Media",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqwddedaeeeee",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "archgenie-gambit",
    ["match_pattern"] = "Archgenie Gambit",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqwddedqedeeeee",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "archgenie-reflection-memory",
    ["match_pattern"] = "Archgenie Reflection: Memory",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqwddedqwaqqqqq",
    ["handler"] = h.defaulthandler
})
-- these need to be first ^^

table.insert(hextable, {
    ["name"] = "write-grimoire",
    ["match_pattern"] = "Write Grimoire",
    ["startDir"] = "WEST",
    ["angles"] = "aqwqaeaqa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "erase-grimoire",
    ["match_pattern"] = "Erase Grimoire",
    ["startDir"] = "WEST",
    ["angles"] = "aqwqaqded",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "archivist-reflection",
    ["match_pattern"] = "Archivist Reflection",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "aqaeaqwqa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "age-scroll",
    ["match_pattern"] = "Age Scroll",
    ["startDir"] = "EAST",
    ["angles"] = "waeqqqqeqqqwqeaeaeaeq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "dye-ink",
    ["match_pattern"] = "Dye Ink",
    ["startDir"] = "EAST",
    ["angles"] = "waeqqqqewqqwqqeqeqqwqqeq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "illuminate-ink",
    ["match_pattern"] = "Illuminate Ink",
    ["startDir"] = "EAST",
    ["angles"] = "waeqqqqedeqdqdqdqeqdwwd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "vanish-scroll",
    ["match_pattern"] = "Vanish Scroll",
    ["startDir"] = "EAST",
    ["angles"] = "waeqqqqedeqeeweeqewee",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "wish",
    ["match_pattern"] = "Wish",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "eweweweweweewedeaqqqd",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "genie-reflection-spatial",
    ["match_pattern"] = "Genie Reflection: Spatial",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "qwddedqdd",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "genie-reflection-rotational",
    ["match_pattern"] = "Genie Reflection: Rotational",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "qwddedadw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "genie-reflection-kinetic",
    ["match_pattern"] = "Genie Reflection: Kinetic",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "qwddedqew",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "genie-reflection-temporal",
    ["match_pattern"] = "Genie Reflection: Temporal",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "qwddedqwddwa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "genie-reflection-media",
    ["match_pattern"] = "Genie Reflection: Media",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "qwddedaeeeee",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "genie-gambit",
    ["match_pattern"] = "Genie Gambit",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "qwddedqedeeeee",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "genie-reflection-memory",
    ["match_pattern"] = "Genie Reflection: Memory",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "qwddedqwaqqqqq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "finale-reflection",
    ["match_pattern"] = "Finale Reflection",
    ["startDir"] = "EAST",
    ["angles"] = "aaddaddad",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "make-genie",
    ["match_pattern"] = "Make Genie",
    ["startDir"] = "EAST",
    ["angles"] = "qaqwawqwqqwqwqwqwqwqq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "promote-lamp",
    ["match_pattern"] = "Promote Lamp",
    ["startDir"] = "WEST",
    ["angles"] = "qweedeqeedeqdqdwewewwewewwewe",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "epiphany-purification",
    ["match_pattern"] = "Epiphany Purification",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "awqaqqq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "sentience-purification",
    ["match_pattern"] = "Sentience Purification",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqqaqqq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "garbage-reflection",
    ["match_pattern"] = "Garbage Reflection",
    ["startDir"] = "EAST",
    ["angles"] = "aqawde",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "reflecting-gambit",
    ["match_pattern"] = "Reflecting Gambit",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "ddwqaq",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "bubbling-gambit",
    ["match_pattern"] = "Bubbling Gambit",
    ["startDir"] = "EAST",
    ["angles"] = "aawede",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "dioscuri-gambit-ii",
    ["match_pattern"] = "Dioscuri Gambit II",
    ["startDir"] = "EAST",
    ["angles"] = "waadadaa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "congruence-distillation",
    ["match_pattern"] = "Congruence Distillation",
    ["startDir"] = "EAST",
    ["angles"] = "aaqd",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "chirographers-purification",
    ["match_pattern"] = "Chirographer's Purification",
    ["startDir"] = "EAST",
    ["angles"] = "wqaedeqd",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "calligraphers-purification",
    ["match_pattern"] = "Calligrapher's Purification",
    ["startDir"] = "EAST",
    ["angles"] = "wqqqaqwd",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "handwriting-distillation",
    ["match_pattern"] = "Handwriting Distillation",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "eadqqqa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "glyphmakers-distillation",
    ["match_pattern"] = "Glyphmaker's Distillation",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "aqqqdae",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "perlin-distillation",
    ["match_pattern"] = "Perlin Distillation",
    ["startDir"] = "WEST",
    ["angles"] = "qawedqdq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "naval-distillation",
    ["match_pattern"] = "Naval Distillation",
    ["startDir"] = "EAST",
    ["angles"] = "wqqaqwede",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "lillypad-distillation",
    ["match_pattern"] = "Lillypad Distillation",
    ["startDir"] = "EAST",
    ["angles"] = "weedewqaq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "railgun-exaltation",
    ["match_pattern"] = "Railgun Exaltation",
    ["startDir"] = "EAST",
    ["angles"] = "wqqddqeqddq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "laser-exaltation",
    ["match_pattern"] = "Laser Exaltation",
    ["startDir"] = "EAST",
    ["angles"] = "weeaaeqeaae",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "telepathic-reflection",
    ["match_pattern"] = "Telepathic Reflection",
    ["startDir"] = "EAST",
    ["angles"] = "wqqadaw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "send-thought",
    ["match_pattern"] = "Send Thought",
    ["startDir"] = "EAST",
    ["angles"] = "qqqqwaqa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "shout-thought",
    ["match_pattern"] = "Shout Thought",
    ["startDir"] = "EAST",
    ["angles"] = "daqqqqwa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "hallucinate-pling",
    ["match_pattern"] = "Hallucinate Pling",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "eqqqada",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "hallucinate-click",
    ["match_pattern"] = "Hallucinate Click",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "eqqadaq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "charge-reflection",
    ["match_pattern"] = "Charge Reflection",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "aqaddq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "retreat-reflection",
    ["match_pattern"] = "Retreat Reflection",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "dedwdq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "dodge-reflection",
    ["match_pattern"] = "Dodge Reflection",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "edead",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "dodge-reflection",
    ["match_pattern"] = "Evade Reflection",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "qaqda",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "leaping-reflection",
    ["match_pattern"] = "Leaping Reflection",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "qaqdaqqa",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "stealthy-reflection",
    ["match_pattern"] = "Stealthy Reflection",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "wede",
    ["handler"] = h.defaulthandler
})
-- these should be in this order vv
table.insert(hextable, {
    ["name"] = "soroban-reflection-ii",
    ["match_pattern"] = "Soroban Reflection II",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "waqdee",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "soroban-reflection",
    ["match_pattern"] = "Soroban Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "wdeaqq",
    ["handler"] = h.defaulthandler
})
-- these should be in this order ^^

table.insert(hextable, {
    ["name"] = "soroban-gambit",
    ["match_pattern"] = "Soroban Gambit",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qdeeaae",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "janus-gambit",
    ["match_pattern"] = "Janus' Gambit",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "aadee",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "janus-gambit",
    ["match_pattern"] = "Janus' Gambit",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "aadee",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "nephthyss-gambit",
    ["match_pattern"] = "Nephthys's Gambit:[%s]*([%d]+)",
    ["handler"] = hexicalhandlers.nepthyshandler
})

table.insert(hextable, {
    ["name"] = "sehkmets-gambit",
    ["match_pattern"] = "Sehkmet's Gambit:[%s]*([%d]+)",
    ["handler"] = hexicalhandlers.sehkmethandler
})

table.insert(hextable, {
    ["name"] = "atalantas-gambit",
    ["match_pattern"] = "Atalanta's Gambit",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "aqdea",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "castors-gambit",
    ["match_pattern"] = "Castor's Gambit",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "adadee",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "polluxs-gambit",
    ["match_pattern"] = "Pollux's Gambit",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "dadaqq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "sisyphus-gambit",
    ["match_pattern"] = "Sisyphus' Gambit",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqwede",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "themis-gambit",
    ["match_pattern"] = "Themis' Gambit",
    ["startDir"] = "WEST",
    ["angles"] = "dwaad",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "tutus-gambit",
    ["match_pattern"] = "Tutu's Gambit",
    ["startDir"] = "WEST",
    ["angles"] = "eedqa",
    ["handler"] = h.defaulthandler
})
-- these should be in this order vv
table.insert(hextable, {
    ["name"] = "librarians-gambit-ii",
    ["match_pattern"] = "Librarian's Gambit II",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "edeedade",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "librarians-gambit",
    ["match_pattern"] = "Librarian's Gambit",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "edeeedad",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "librarians-purification-ii",
    ["match_pattern"] = "Librarian's Purification II",
    ["startDir"] = "EAST",
    ["angles"] = "qaqqqada",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "librarians-purification",
    ["match_pattern"] = "Librarian's Purification",
    ["startDir"] = "EAST",
    ["angles"] = "qaqqadaq",
    ["handler"] = h.defaulthandler
})
-- these should be in this order ^^
table.insert(hextable, {
    ["name"] = "conjure-mage-block",
    ["match_pattern"] = "Conjure Mage Block",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "dee",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "bouncy",
    ["match_pattern"] = "Bouncy",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "deeqa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "energized",
    ["match_pattern"] = "Energized",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "deewad",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "ephemeral",
    ["match_pattern"] = "Ephemeral",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "deewwaawd",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "invisible",
    ["match_pattern"] = "Invisible",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "deeqedeaqqqwqqq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "replaceable",
    ["match_pattern"] = "Replaceable",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "deewqaqqqqq",
    ["handler"] = h.defaulthandler
})


table.insert(hextable, {
    ["name"] = "volatile",
    ["match_pattern"] = "Volatile",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "deewedeeeee",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "chromatic-purification",
    ["match_pattern"] = "Chromatic Purification",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "weedwa",
    ["handler"] = h.defaulthandler
})


table.insert(hextable, {
    ["name"] = "dye",
    ["match_pattern"] = "Dye",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "dwaqqw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "vision-purification",
    ["match_pattern"] = "Vision Purification",
    ["startDir"] = "EAST",
    ["angles"] = "wdwwaawwewdwwewwdwwe",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "magic-missile",
    ["match_pattern"] = "Magic Missile",
    ["startDir"] = "WEST",
    ["angles"] = "qaqww",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "pigment-purification",
    ["match_pattern"] = "Pigment Purification",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "aqwedeweeeewweeew",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "pigment-exaltation",
    ["match_pattern"] = "Pigment Exaltation",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "edewqaqqqqqwqqq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "internalize-pigment-ii",
    ["match_pattern"] = "Internalize Pigment II",
    ["startDir"] = "EAST",
    ["angles"] = "weeeweeqeeeewqaqweeee",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "prestidigitation",
    ["match_pattern"] = "Prestidigitation",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "wedewedew",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "alteration-purification",
    ["match_pattern"] = "Alteration Purification",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "wqaqwqaqw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "wristpocket",
    ["match_pattern"] = "Wristpocket",
    ["startDir"] = "WEST",
    ["angles"] = "aaqqa",
    ["handler"] = h.defaulthandler
})

-- these must be in this order vv
table.insert(hextable, {
    ["name"] = "pocket-reflection-ii",
    ["match_pattern"] = "Pocket Reflection II",
    ["startDir"] = "WEST",
    ["angles"] = "aaqqaaw",
    ["handler"] = h.defaulthandler
})
table.insert(hextable, {
    ["name"] = "pocket-reflection",
    ["match_pattern"] = "Pocket Reflection",
    ["startDir"] = "WEST",
    ["angles"] = "aaqqada",
    ["handler"] = h.defaulthandler
})
-- these must be in this order ^^
table.insert(hextable, {
    ["name"] = "sleight",
    ["match_pattern"] = "Sleight",
    ["startDir"] = "WEST",
    ["angles"] = "aaqqadeeeq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "mage-hand",
    ["match_pattern"] = "Mage Hand",
    ["startDir"] = "WEST",
    ["angles"] = "aaqqaeea",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "mage-mouth",
    ["match_pattern"] = "Mage Mouth",
    ["startDir"] = "WEST",
    ["angles"] = "aaqqadaa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "conjure-speck",
    ["match_pattern"] = "Conjure Speck",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "ade",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "move-speck",
    ["match_pattern"] = "Move Speck",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "adeqaa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "rotate-speck",
    ["match_pattern"] = "Rotate Speck",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "adeaw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "roll-speck",
    ["match_pattern"] = "Roll Speck",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "adeqqqqq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "alter-speck",
    ["match_pattern"] = "Alter Speck",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "adeeaqa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "time-speck",
    ["match_pattern"] = "Time Speck",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "adeqqaawdd",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "resize-speck",
    ["match_pattern"] = "Resize Speck",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "adeeqed",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "thicken-speck",
    ["match_pattern"] = "Thicken Speck",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "adeeqw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "paint-speck",
    ["match_pattern"] = "Paint Speck",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "adeqqaq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "dismiss-speck",
    ["match_pattern"] = "Dismiss Speck",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "adeaqde",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "zone-distillation-specklike",
    ["match_pattern"] = "Zone Distillation: Specklike",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "qqqqqwdeddwqde",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "autograph",
    ["match_pattern"] = "Autograph",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "wwqqqqq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "conjure-hexburst",
    ["match_pattern"] = "Conjure Hexburst",
    ["startDir"] = "EAST",
    ["angles"] = "aadaadqaq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "conjure-hextito",
    ["match_pattern"] = "Conjure Hextito",
    ["startDir"] = "EAST",
    ["angles"] = "qaqdqaqdwawaw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "conjure-fireball",
    ["match_pattern"] = "Conjure Fireball",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "wqqqqqwaeaeaeaeae",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "spit",
    ["match_pattern"] = "Spit",
    ["startDir"] = "EAST",
    ["angles"] = "dwqaqw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "gasp",
    ["match_pattern"] = "Gasp",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "aweeeeewaweeeee",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "myodesopsia",
    ["match_pattern"] = "Myodesopsia",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "wadawadawawaaw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "conjure-compass",
    ["match_pattern"] = "Conjure Compass",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "aqwawqwqqwqwq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "conjure-spike",
    ["match_pattern"] = "Conjure Spike",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qdqdqdqdww",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "conjure-tchotchke",
    ["match_pattern"] = "Conjure Tchotchke",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "wwwwwaqqqqqeaqeaeaeaeaeq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "tchotchke-gambit",
    ["match_pattern"] = "Tchotchke Gambit",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "waqqqqqedeqdqdqdqdqe",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "tchotchke-reflection",
    ["match_pattern"] = "Tchotchke Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "waqqqqqeaqeaeaeaeaeq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "displace",
    ["match_pattern"] = "Displace",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqqqqeedaqqqa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "inculcate",
    ["match_pattern"] = "Inculcate",
    ["startDir"] = "EAST",
    ["angles"] = "wwaqqqqqeqdedwwqwqwwdedwwqwqw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "evoker-reflection",
    ["match_pattern"] = "Evoker Reflection",
    ["startDir"] = "EAST",
    ["angles"] = "wwaqqqqqeeaqawwewewwaqawwewew",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "simulate-firework",
    ["match_pattern"] = "Simulate Firework",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "dedwaqwqqwqa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "conjure-firework",
    ["match_pattern"] = "Conjure Firework",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "dedwaqwwawwqa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "clear-vision",
    ["match_pattern"] = "Clear Vision",
    ["startDir"] = "WEST",
    ["angles"] = "eeeeeqaqeeeee",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "pierce-darkness",
    ["match_pattern"] = "Pierce Darkness",
    ["startDir"] = "WEST",
    ["angles"] = "edewawede",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "visualize-forms",
    ["match_pattern"] = "Visualize Forms",
    ["startDir"] = "WEST",
    ["angles"] = "eedwwawwdee",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "broadcast-vision",
    ["match_pattern"] = "Broadcast Vision",
    ["startDir"] = "WEST",
    ["angles"] = "wewdwewwawwewdwew",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "identify-importance",
    ["match_pattern"] = "Identify Importance",
    ["startDir"] = "WEST",
    ["angles"] = "eewdweqaqewdwee",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "split-vision",
    ["match_pattern"] = "Split Vision",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqdedaedqqdedaqaedeqd",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "miners-purification",
    ["match_pattern"] = "Miner's Purification",
    ["startDir"] = "EAST",
    ["angles"] = "qaqqqqqeeeeedq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "demomans-purification",
    ["match_pattern"] = "Demoman's Purification",
    ["startDir"] = "EAST",
    ["angles"] = "qaqqqqqewaawaawa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "plumbers-purification",
    ["match_pattern"] = "Plumber's Purification",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "edeeeeeqwqqqqw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "orientation-purification",
    ["match_pattern"] = "Orientation Purification",
    ["startDir"] = "EAST",
    ["angles"] = "qaqqqqqwadeeed",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "farmers-purification",
    ["match_pattern"] = "Farmer's Purification",
    ["startDir"] = "EAST",
    ["angles"] = "qaqqqqqwaea",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "glowing-purification",
    ["match_pattern"] = "Glowing Purification",
    ["startDir"] = "EAST",
    ["angles"] = "qaqqqqqwaeaeaeaeaea",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "lock-purification",
    ["match_pattern"] = "Lock Purification",
    ["startDir"] = "EAST",
    ["angles"] = "qaqqqeaqwdewd",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "angle-purification",
    ["match_pattern"] = "Angle Purification",
    ["startDir"] = "EAST",
    ["angles"] = "qaqqqqqwqqwqd",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "bunching-purification",
    ["match_pattern"] = "Bunching Purification",
    ["startDir"] = "EAST",
    ["angles"] = "qaqqqqqweeeeedeeqaqdeee",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "book-purification",
    ["match_pattern"] = "Book Purification",
    ["startDir"] = "EAST",
    ["angles"] = "qaqqqqqeawa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "thaumaturgists-purification",
    ["match_pattern"] = "Thaumaturgist's Purification",
    ["startDir"] = "WEST",
    ["angles"] = "waqeaeqawqwawaw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "charm-distillation",
    ["match_pattern"] = "Charm Distillation",
    ["startDir"] = "WEST",
    ["angles"] = "waqwwqaweede",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "calpiers-purification",
    ["match_pattern"] = "Caliper's Purification",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "dwe",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "theodolite-purification",
    ["match_pattern"] = "Theodolite Purification",
    ["startDir"] = "EAST",
    ["angles"] = "wqaa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "vitality-purification",
    ["match_pattern"] = "Vitality Purification",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "wddwaqqwawq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "fitness-purification",
    ["match_pattern"] = "Fitness Purification",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "wddwwawaeqwawq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "suffocation-purification",
    ["match_pattern"] = "Suffocation Purification",
    ["startDir"] = "EAST",
    ["angles"] = "wwaade",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "lung-purification",
    ["match_pattern"] = "Lung Purification",
    ["startDir"] = "EAST",
    ["angles"] = "wwaadee",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "hunger-purification",
    ["match_pattern"] = "Hunger Purification",
    ["startDir"] = "WEST",
    ["angles"] = "qqqadaddw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "stamina-purification",
    ["match_pattern"] = "Stamina Purification",
    ["startDir"] = "WEST",
    ["angles"] = "qqqadaddq",
    ["handler"] = h.defaulthandler
})

-- these need to be in this order vv
table.insert(hextable, {
    ["name"] = "inferno-purification-ii",
    ["match_pattern"] = "Inferno Purification II",
    ["startDir"] = "WEST",
    ["angles"] = "eewdead",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "inferno-purification",
    ["match_pattern"] = "Inferno Purification",
    ["startDir"] = "EAST",
    ["angles"] = "qqwaqda",
    ["handler"] = h.defaulthandler
})
-- these need to be in this order ^^

table.insert(hextable, {
    ["name"] = "endermans-purification",
    ["match_pattern"] = "Enderman's Purification",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "qqqqwaadq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "youth-purification",
    ["match_pattern"] = "Youth Purification",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "awaqdwaaw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "reproduction-purification",
    ["match_pattern"] = "Reproduction Purification",
    ["startDir"] = "EAST",
    ["angles"] = "awaaqdqaawa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "sloths-purification",
    ["match_pattern"] = "Sloth's Purification",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "aqaew",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "racers-purification",
    ["match_pattern"] = "Racer's Purification",
    ["startDir"] = "WEST",
    ["angles"] = "eaq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "ambit-purification",
    ["match_pattern"] = "Ambit Purification",
    ["startDir"] = "EAST",
    ["angles"] = "wawaw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "staff-reflection",
    ["match_pattern"] = "Staff Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "waaq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "device-reflection",
    ["match_pattern"] = "Device Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "waaqwwaqqqqq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "tchotchke-reflection",
    ["match_pattern"] = "Tchotchke Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "waaqwwaqqqqqeaqeaeaeaeaeq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "evocation-reflection",
    ["match_pattern"] = "Evocation Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "waaqeaqa",
    ["handler"] = h.defaulthandler
})
-- these should be in this order vv
table.insert(hextable, {
    ["name"] = "grand-wish-reflection",
    ["match_pattern"] = "Grand Wish Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "waaqqqaqwdd",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "wish-reflection",
    ["match_pattern"] = "Wish Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "waaqdqdded",
    ["handler"] = h.defaulthandler
})
-- these should be in this order ^^

table.insert(hextable, {
    ["name"] = "constructed-reflection",
    ["match_pattern"] = "Constructed Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "waaqdeaqwqae",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "dexterity-reflection",
    ["match_pattern"] = "Dexterity Reflection",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqqqwaaq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "edibility-purification",
    ["match_pattern"] = "Edibility Purification",
    ["startDir"] = "WEST",
    ["angles"] = "adaqqqdd",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "calorie-purification",
    ["match_pattern"] = "Calorie Purification",
    ["startDir"] = "WEST",
    ["angles"] = "adaqqqddqe",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "satiation-purification",
    ["match_pattern"] = "Satiation Purification",
    ["startDir"] = "WEST",
    ["angles"] = "adaqqqddqw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "flesh-purification",
    ["match_pattern"] = "Flesh Purification",
    ["startDir"] = "WEST",
    ["angles"] = "adaqqqddaed",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "dessert-purification",
    ["match_pattern"] = "Dessert Purification",
    ["startDir"] = "WEST",
    ["angles"] = "adaqqqddaq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "detectives-purification",
    ["match_pattern"] = "Detective's Purification",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qqqqqe",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "recognizers-purification",
    ["match_pattern"] = "Recognizer's Purification",
    ["startDir"] = "WEST",
    ["angles"] = "eeeeeq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "classifiers-purification",
    ["match_pattern"] = "Classifier's Purification",
    ["startDir"] = "WEST",
    ["angles"] = "edqdeq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "tool-purification",
    ["match_pattern"] = "Tool Purification",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "qaqqqq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "accessory-purification",
    ["match_pattern"] = "Accessory Purification",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "edeeee",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "storage-purification",
    ["match_pattern"] = "Storage Purification",
    ["startDir"] = "EAST",
    ["angles"] = "qaqqwqqqw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "warehouse-purification",
    ["match_pattern"] = "Warehouse Purification",
    ["startDir"] = "WEST",
    ["angles"] = "edeeweeew",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "deterioration-purification",
    ["match_pattern"] = "Deterioration Purification",
    ["startDir"] = "NORTH_EAST",
    ["angles"] = "eeweeewdeq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "fragility-purification",
    ["match_pattern"] = "Fragility Purification",
    ["startDir"] = "NORTH_WEST",
    ["angles"] = "qqwqqqwaqe",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "diagnosis-purification",
    ["match_pattern"] = "Diagnosis Purification",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "wqqq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "prescription-purification",
    ["match_pattern"] = "Prescription Purification",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "wqqqadee",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "condition-purification",
    ["match_pattern"] = "Condition Purification",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "wqqqaawd",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "concentration-distillation",
    ["match_pattern"] = "Concentration Distillation",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "wqqqaqwa",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "clearance-distillation",
    ["match_pattern"] = "Clearance Distillation",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "wqqqaqwdd",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "luminance-purification",
    ["match_pattern"] = "Luminance Purification",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "wqwqwqwqwqwaeqqqqaeqaeaeaeaw",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "meterologists-reflection",
    ["match_pattern"] = "Meterologist's Reflection",
    ["startDir"] = "WEST",
    ["angles"] = "eweweweweweeeaedqdqde",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "battery-purification",
    ["match_pattern"] = "Battery Purification",
    ["startDir"] = "EAST",
    ["angles"] = "qwqwqwqwqwqqwwaadwdaaww",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "peripheral-purification",
    ["match_pattern"] = "Peripheral Purification",
    ["startDir"] = "WEST",
    ["angles"] = "eweweweweweewwddawaddww",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "circadian-reflection",
    ["match_pattern"] = "Circadian Reflection",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "wwawwawwqqawwdwwdwwaqwqwqwqwq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "temporal-reflection",
    ["match_pattern"] = "Temporal Reflection",
    ["startDir"] = "SOUTH_EAST",
    ["angles"] = "wddwaqqwqaddaqqwddwaqqwqaddaq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "geographical-purification",
    ["match_pattern"] = "Geographical Purification",
    ["startDir"] = "WEST",
    ["angles"] = "qwqwqawdqqaqqdwaqwqwq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "plane-reflection",
    ["match_pattern"] = "Plane Reflection",
    ["startDir"] = "WEST",
    ["angles"] = "qwqwqwqwqwqqaedwaqd",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "distortion-reflection",
    ["match_pattern"] = "Distortion Reflection",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "aqwawqwqqwqwqwqwqwq",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "greater-blink",
    ["match_pattern"] = "Greater Blink",
    ["handler"] = h.greatspellhandler
})

table.insert(hextable, {
    ["name"] = "conjure-mesh",
    ["match_pattern"] = "Conjure Mesh",
    ["startDir"] = "EAST",
    ["angles"] = "qaqqqqqwqqqdeeweweeaeewewee",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "weave-mesh",
    ["match_pattern"] = "Weave Mesh",
    ["startDir"] = "EAST",
    ["angles"] = "qaqqqqqwqqqdeewewee",
    ["handler"] = h.defaulthandler
})

table.insert(hextable, {
    ["name"] = "tangle-purification",
    ["match_pattern"] = "Tangle Purification",
    ["startDir"] = "SOUTH_WEST",
    ["angles"] = "edeeeeeweeeaqqwqwqq",
    ["handler"] = h.defaulthandler
})

return { hextable = hextable }