import dataclasses
import functools
import requests
from bs4 import BeautifulSoup, Tag
import re
from functools import cmp_to_key

hexdoc_sites = {
    "hexcasting": "https://hexcasting.hexxy.media/v/0.11.2/1.0/en_us/#patterns/readwrite@hexcasting:local",
    "hexal": "https://hexal.hexcast.ing/v/latest/remaint/en_us/#patterns/readwrite@hexcasting:local",
    "complexhex": "http://complexhex.hexxy.media/v/latest/0.1.x/en_us/#patterns/readwrite@hexcasting:local",
    "hexcassettes": "https://miyucomics.github.io/hexcassettes/v/1.1.4/1.0.0/en_us/#patterns/readwrite@hexcasting:local",
    "hexcellular": "https://hexcellular.hexxy.media/v/1.0.4/1.0.0/en_us/#patterns/readwrite@hexcasting:local",
    "hexdebug": "https://hexdebug.hexxy.media/v/0.2.2+1.20.1/1.0/en_us/#patterns/readwrite@hexcasting:local",
    "hexical":"https://hexical.hexxy.media/v/1.5.0/1.0.0/en_us/#patterns/readwrite@hexcasting:local",
    "hextweaks": "https://walksanatora.github.io/HexTweaks/?nospoiler/#patterns/readwrite@hexcasting:local",
    ##broken rn, have to do manually
    # "moreiotas": "https://talia-12.github.io/MoreIotas/#patterns/readwrite@hexcasting:local"
    "oneironaut":"https://oneironaut.hexxy.media/v/0.4.0/1.0/en_us/#patterns/readwrite@hexcasting:local"
}


@dataclasses.dataclass
class Pattern:
    name: str
    matchpattern: str
    startDir: str
    angles: str

special_handlers={
    ##base hex
    "create-lava":"h.greatspellhandler",
    "summon-lightning":"h.greatspellhandler",
    "summon-rain":"h.greatspellhandler",
    "dispel-rain":"h.greatspellhandler",
    "altiora":"h.greatspellhandler",
    "greater-teleport":"h.greatspellhandler",
    "blue-suns-zenith":"h.greatspellhandler",
    "black-suns-zenith":"h.greatspellhandler",
    "white-suns-zenith":"h.greatspellhandler",
    "red-suns-zenith":"h.greatspellhandler",
    "green-suns-zenith":"h.greatspellhandler",
    "summon-greater-sentinel":"h.greatspellhandler",
    "craft-phial":"h.greatspellhandler",
    "flay-mind":"h.greatspellhandler",
    "bookkeepers-gambit":"h.bookkeeperhandler",
    "numerical-reflection":"h.numhandler",
    ##hexal
    "accelerate":"h.greatspellhandler",
    "consume-wisp":"h.greatspellhandler",
    "bind-wisp":"h.greatspellhandler",
    "gates-reflection":"h.greatspellhandler",
    ##complexhex
    "summon-block-display":"h.greatspellhandler",
    "summon-item-display":"h.greatspellhandler",
    "summon-text-display":"h.greatspellhandler",
    ##hexical
    "greater-blink": "h.greatspellhandler",
    "sehkmets-gambit": "hexicalhandlers.sehkmethandler",
    "nephthyss-gambit": "hexicalhandlers.nepthyshandler",
    ##hextweaks
    "natural-search":"h.greatspellhandler",
    "suspicious-glyph":"h.greatspellhandler",
    ##moreiotas
    #TODO, online book broken for moreiotas
    ##oneironaut
    "media-infusion":"h.greatspellhandler",
    "noetic-gateway":"h.greatspellhandler",
    "spatial-interchange":"h.greatspellhandler",
    "stealth-shroud":"h.greatspellhandler",
    "uplifting-resonance":"h.greatspellhandler",
}

def compare_pat(pat_a: Pattern, pat_b: Pattern):
    match_one = pat_a.__dict__.get("matchpattern")
    match_two = pat_b.__dict__.get("matchpattern")

    # sort by inverse string len
    if len(match_one) > len(match_two):
        return -1
    elif len(match_one) < len(match_two):
        return 1
    return 0


for site in hexdoc_sites:
    r = requests.get(hexdoc_sites.get(site))

    # check status code for response received
    if r.status_code != 200:
        raise Exception("Cannot get site: " + hexdoc_sites.get(site))

    # parse html
    soup = BeautifulSoup(r.content, "html.parser")

    pattern_canvases = soup.find_all("canvas", {"class": "spell-viz"})

    patterns: list[Pattern] = []

    for pattern in pattern_canvases:
        is_secondary_canvas = pattern.find_previous_sibling(
            "canvas", {"class": "spell-viz"}
        )

        ## ignore secondary patterns within same div
        if is_secondary_canvas:
            continue

        ## yay list comp
        matchpattern = (
            [string for string in pattern.parent.parent.find("h4").strings][0]
            .split("(")[0]
            .strip()
        )

        ## ignore examples
        if matchpattern == "An Example":
            continue
        ## replace abbreviations with full words
        matchpattern = (
            matchpattern.replace("Dstl.", "Distillation")
            .replace("Prfn.", "Purification")
            .replace("Rfln.", "Reflection")
            .replace("Tan.", "Tangent")
            .strip()
        )

        if re.search(r"\+(.)\/\-(.)", matchpattern):
            symbol = re.search(r"\+(.)\/\-(.)", matchpattern).groups()[0]
            basename = matchpattern.split("+")[0].strip()

            pos = f"{basename}: +{symbol}"
            pos_name = (
                pos.lower()
                .replace("-", "minus")
                .replace("+", "plus")
                .replace(" ", "-")
                .replace("'", "")
            )
            pos_start = pattern.get("data-start").upper()
            pos_angles = pattern.get("data-string")

            sib = pattern.find_next_sibling("canvas", {"class": "spell-viz"})
            neg = f"{basename}: -{symbol}"
            neg_name = (
                neg.lower()
                .replace("-", "minus")
                .replace("+", "plus")
                .replace(" ", "-")
                .replace("'", "")
                .replace(":", "")
            )
            neg_start = pattern.get("data-start").upper()
            neg_angles = pattern.get("data-string")

            pos_pat = Pattern(
                pos_name,
                pos,
                startDir=pos_start,
                angles=pos_angles,
            )
            patterns.append(pos_pat)
            neg_pat = Pattern(
                neg_name,
                neg,
                startDir=neg_start,
                angles=neg_angles,
            )
            patterns.append(neg_pat)

        else:
            name = (
                matchpattern.lower()
                .replace("-", "minus")
                .replace("+", "plus")
                .replace(" ", "-")
                .replace("'", "")
                .replace(":", "")
            )
            pat = Pattern(
                name,
                matchpattern,
                startDir=pattern.get("data-start").upper(),
                angles=pattern.get("data-string"),
            )
            patterns.append(pat)

    patterns.sort(key=functools.cmp_to_key(compare_pat))
    ##dedup list
    for idx, pat in enumerate(patterns):
        for oidx, other_pat in enumerate(patterns):
            if (
                pat.__dict__.get("matchpattern")
                == other_pat.__dict__.get("matchpattern")
                and idx != oidx
            ):
                patterns.pop(idx)

    with open(f"./output/{site}.lua", "w") as file:
        file.write("""
local h = require("handlers.hexhandlers")

local hextable = {}
""")
        for pat in patterns:
            file.write(
                f"""
table.insert(hextable, {{
    ["name"] = "{pat.__dict__.get("name")}",
    ["match_pattern"] = "{pat.__dict__.get("matchpattern")}",
    ["startDir"] = "{pat.__dict__.get("startDir")}",
    ["angles"] = "{pat.__dict__.get("angles")}",
    ["handler"] = {"h.defaultspellhandler" if pat.__dict__.get("name") not in special_handlers.keys() else special_handlers.get(pat.__dict__.get("name"))}
}})\n
"""
            )
        file.write("""
return { hextable = hextable }
""")
