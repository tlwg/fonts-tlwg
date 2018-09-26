#!/usr/bin/env python

import sys
import fontforge

sfd_file = sys.argv[1]
ttf_file = sfd_file.replace(".sfd", ".ttf")

f = fontforge.open(sfd_file)
f.generate(ttf_file, layer="Quad")
