FONTSOURCES = \
	Garuda-BoldOblique.sfd \
	Garuda-Bold.sfd \
	Garuda-Oblique.sfd \
	Garuda.sfd \
	Norasi-BoldOblique.sfd \
	Norasi-Bold.sfd \
	Norasi-Oblique.sfd \
	Norasi.sfd

TTFFILES = \
	Garuda-BoldOblique.ttf \
	Garuda-Bold.ttf \
	Garuda-Oblique.ttf \
	Garuda.ttf \
	Norasi-BoldOblique.ttf \
	Norasi-Bold.ttf \
	Norasi-Oblique.ttf \
	Norasi.ttf

TYPE1FILES = \
	Garuda-BoldOblique.pfb \
	Garuda-Bold.pfb \
	Garuda-Oblique.pfb \
	Garuda.pfb \
	Norasi-BoldOblique.pfb \
	Norasi-Bold.pfb \
	Norasi-Oblique.pfb \
	Norasi.pfb

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

