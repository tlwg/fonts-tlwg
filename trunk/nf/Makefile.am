FONTSOURCES = \
	Garuda-BoldOblique.sfd \
	Garuda-Bold.sfd \
	Garuda-Oblique.sfd \
	Garuda.sfd \
	Norasi-BoldItalic.sfd \
	Norasi-BoldOblique.sfd \
	Norasi-Bold.sfd \
	Norasi-Italic.sfd \
	Norasi-Oblique.sfd \
	Norasi.sfd

TTFFILES = \
	Garuda-BoldOblique.ttf \
	Garuda-Bold.ttf \
	Garuda-Oblique.ttf \
	Garuda.ttf \
	Norasi-BoldItalic.ttf \
	Norasi-BoldOblique.ttf \
	Norasi-Bold.ttf \
	Norasi-Italic.ttf \
	Norasi-Oblique.ttf \
	Norasi.ttf

TESTTTFFILES = \
	TTFGaruda-BoldOblique.ttf \
	TTFGaruda-Bold.ttf \
	TTFGaruda-Oblique.ttf \
	TTFGaruda.ttf \
	TTFNorasi-BoldItalic.ttf \
	TTFNorasi-BoldOblique.ttf \
	TTFNorasi-Bold.ttf \
	TTFNorasi-Italic.ttf \
	TTFNorasi-Oblique.ttf \
	TTFNorasi.ttf

OTFFILES = \
	Garuda-BoldOblique.otf \
	Garuda-Bold.otf \
	Garuda-Oblique.otf \
	Garuda.otf \
	Norasi-BoldItalic.otf \
	Norasi-BoldOblique.otf \
	Norasi-Bold.otf \
	Norasi-Italic.otf \
	Norasi-Oblique.otf \
	Norasi.otf

TESTOTFFILES = \
	OTFGaruda-BoldOblique.otf \
	OTFGaruda-Bold.otf \
	OTFGaruda-Oblique.otf \
	OTFGaruda.otf \
	OTFNorasi-BoldItalic.otf \
	OTFNorasi-BoldOblique.otf \
	OTFNorasi-Bold.otf \
	OTFNorasi-Italic.otf \
	OTFNorasi-Oblique.otf \
	OTFNorasi.otf

TYPE1FILES = \
	Garuda-BoldOblique.pfb \
	Garuda-Bold.pfb \
	Garuda-Oblique.pfb \
	Garuda.pfb \
	Norasi-BoldItalic.pfb \
	Norasi-BoldOblique.pfb \
	Norasi-Bold.pfb \
	Norasi-Italic.pfb \
	Norasi-Oblique.pfb \
	Norasi.pfb

TESTTYPE1FILES = \
	PSGaruda-BoldOblique.pfb \
	PSGaruda-Bold.pfb \
	PSGaruda-Oblique.pfb \
	PSGaruda.pfb \
	PSNorasi-BoldItalic.pfb \
	PSNorasi-BoldOblique.pfb \
	PSNorasi-Bold.pfb \
	PSNorasi-Italic.pfb \
	PSNorasi-Oblique.pfb \
	PSNorasi.pfb

MAINTAINERCLEANFILES = Makefile.in
CLEANFILES = *.ttf *.g2n *.pfb *.pfa *.afm *.pfm *.otf *.enc *.tfm

EXTRA_DIST = $(FONTSOURCES)

if INCLUDE_TTF
ttf_DATA = $(TTFFILES)
endif

if INCLUDE_TYPE1
type1_DATA = $(TYPE1FILES)
endif

if INCLUDE_OTF
otf_DATA = $(OTFFILES)
endif

testfontdir = /dev/null

if INCLUDE_TESTFONT
testfont_DATA = $(TESTTTFFILES) $(TESTTYPE1FILES) $(TESTOTFFILES)
endif

include $(top_builddir)/scripts/gen.mk
