import sys
import os
import fontforge

sfd_file = sys.argv[1]

f = fontforge.open(sfd_file)

# Prepend "TTF" prefix to font/family name
f.fontname = "TTF" + f.fontname
f.familyname = "TTF" + f.familyname
f.fullname = "TTF" + f.fullname

# Prepend "TTF" prefix to "Preferred Family"
for name in f.sfnt_names:
    if name[0] == "English (US)" and name[1] == "Preferred Family":
        f.appendSFNTName(name[0], name[1], "TTF" + name[2])
        break

f.generate(f.fontname + ".ttf", layer="Quad")
