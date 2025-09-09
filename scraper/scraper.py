import functools
import dataclasses
import requests
from bs4 import BeautifulSoup
import re
from functools import cmp_to_key

hexdoc_sites = {
    "hexbook": "https://book.hexxy.media/v/latest/v2/en_us/#patterns/readwrite@hexcasting:local"
}


@dataclasses.dataclass
class Pattern:
    name: str
    matchpattern: str
    handler: str
    startDir: str
    angles: str


special_handlers = {
    # base hex
    "bookkeepers-gambit": "h.bookkeeperhandler",
    "numerical-reflection": "h.numhandler",
    # hexical
    "sehkmets-gambit": "h.sehkmethandler",
    "nephthys-gambit": "h.nepthyshandler",
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


# get correct handler if not default
def get_handler(name: str, canvas):
    handler = "h.defaulthandler"

    if name in special_handlers.keys():
        handler = special_handlers.get(name)
    elif canvas.get("data-per-world") == "True":
        handler = "h.greatspellhandler"

    return handler


for site in hexdoc_sites:
    r = requests.get(hexdoc_sites.get(site))

    # check status code for response received
    if r.status_code != 200:
        raise Exception("Cannot get site: " + hexdoc_sites.get(site))

    # parse html
    soup = BeautifulSoup(r.content, "html.parser")

    pattern_canvases = soup.find_all("canvas", {"class": "spell-viz"})

    patterns: list[Pattern] = []

    for canvas in pattern_canvases:
        is_secondary_canvas = canvas.find_previous_sibling(
            "canvas", {"class": "spell-viz"}
        )

        ## ignore secondary patterns within same div
        if is_secondary_canvas:
            continue

        ## yay list comp
        matchpattern = (
            [string for string in canvas.parent.parent.find("h4").strings][0]
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

        # special case for vector reflections (weird formatting)
        if re.search(r"\+(.)\/\-(.)", matchpattern):
            symbol = re.search(r"\+(.)\/\-(.)", matchpattern).groups()[0]
            basename = matchpattern.split("+")[0].strip()
            pos = f"{basename} +{symbol}"
            pos_name = (
                pos.lower()
                .replace("-", "minus")
                .replace("+", "plus")
                .replace(" ", "-")
                .replace("'", "")
                .replace(":", "")
            )
            pos_start = canvas.get("data-start").upper()
            pos_angles = canvas.get("data-string")

            sib = canvas.find_next_sibling("canvas", {"class": "spell-viz"})
            neg = f"{basename} -{symbol}"
            neg_name = (
                neg.lower()
                .replace("-", "minus")
                .replace("+", "plus")
                .replace(" ", "-")
                .replace("'", "")
                .replace(":", "")
            )
            neg_start = canvas.get("data-start").upper()
            neg_angles = canvas.get("data-string")

            pos_pat = Pattern(
                pos_name,
                pos,
                handler=get_handler(pos_name, canvas),
                startDir=pos_start,
                angles=pos_angles,
            )
            patterns.append(pos_pat)
            neg_pat = Pattern(
                neg_name,
                neg,
                handler=get_handler(neg_name, canvas),
                startDir=neg_start,
                angles=neg_angles,
            )
            patterns.append(neg_pat)
        #all other patterns
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
                handler=get_handler(name, canvas),
                startDir=canvas.get("data-start").upper(),
                angles=canvas.get("data-string"),
            )
            patterns.append(pat)

    patterns.sort(key=functools.cmp_to_key(compare_pat))

    ##dedup list
    unique_patterns = []
    seen_ids = set()
    for pat in patterns:
        if pat.name not in seen_ids:
            unique_patterns.append(pat)
            seen_ids.add(pat.name)

    with open(f"./output/{site}.lua", "w") as file:
        file.write(
            """
local h = require("handlers.hexhandlers")

local hextable = {}
"""
        )
        for pat in unique_patterns:
            # get correct handler
            handler_name = "h.defaultspellhandler"

            file.write(
                f"""
table.insert(hextable, {{
    ["name"] = "{pat.__dict__.get("name")}",
    ["match_pattern"] = "{pat.__dict__.get("matchpattern")}",
    ["startDir"] = "{pat.__dict__.get("startDir")}",
    ["angles"] = "{pat.__dict__.get("angles")}",
    ["handler"] = {pat.__dict__.get("handler")}
}})\n
"""
            )
        file.write(
            """
return { hextable = hextable }
"""
        )
