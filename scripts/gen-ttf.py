import sys
import os
import fontforge

sfd_file = sys.argv[1]
ttf_file = os.path.basename(sfd_file).replace(".sfd", ".ttf")

f = fontforge.open(sfd_file)
f.generate(ttf_file, layer="Quad")
