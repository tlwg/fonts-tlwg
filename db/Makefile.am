FONTSOURCES = \
	DBThaiText-BoldOblique.sfd \
	DBThaiText-Bold.sfd \
	DBThaiText-Oblique.sfd \
	DBThaiText.sfd

TTFFILES = \
	DBThaiText-BoldOblique.ttf \
	DBThaiText-Bold.ttf \
	DBThaiText-Oblique.ttf \
	DBThaiText.ttf

TYPE1FILES = \
	DBThaiText-BoldOblique.pfb \
	DBThaiText-Bold.pfb \
	DBThaiText-Oblique.pfb \
	DBThaiText.pfb

MAINTAINERCLEANFILES = Makefile.in
DISTCLEANFILES = *.ttf *.g2n

EXTRA_DIST = $(FONTSOURCES)

if INCLUDE_TTF
ttf_DATA = $(TTFFILES)
endif

if INCLUDE_TYPE1
type1_DATA = $(TYPE1FILES)
endif

include @top_builddir@/scripts/gen.mk

