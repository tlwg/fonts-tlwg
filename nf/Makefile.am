FONTSOURCES = \
	Kinnari-Italic.sfd \
	Kinnari-BoldItalic.sfd \
	Kinnari-BoldOblique.sfd \
	Kinnari-Bold.sfd \
	Kinnari-Oblique.sfd \
	Kinnari.sfd \
	Garuda-BoldOblique.sfd \
	Garuda-Bold.sfd \
	Garuda-Oblique.sfd \
	Garuda.sfd \
	Norasi-BoldItalic.sfd \
	Norasi-BoldOblique.sfd \
	Norasi-Bold.sfd \
	Norasi-Oblique.sfd \
	Norasi-Italic.sfd \
	Norasi.sfd

TTFFILES = \
	Kinnari-Italic.ttf \
	Kinnari-BoldItalic.ttf \
	Kinnari-BoldOblique.ttf \
	Kinnari-Bold.ttf \
	Kinnari-Oblique.ttf \
	Kinnari.ttf \
	Garuda-BoldOblique.ttf \
	Garuda-Bold.ttf \
	Garuda-Oblique.ttf \
	Garuda.ttf \
	Norasi-BoldItalic.ttf \
	Norasi-BoldOblique.ttf \
	Norasi-Bold.ttf \
	Norasi-Oblique.ttf \
	Norasi-Italic.ttf \
	Norasi.ttf

TESTTTFFILES = \
	TTFKinnari-Italic.ttf \
	TTFKinnari-BoldItalic.ttf \
	TTFKinnari-BoldOblique.ttf \
	TTFKinnari-Bold.ttf \
	TTFKinnari-Oblique.ttf \
	TTFKinnari.ttf \
	TTFGaruda-BoldOblique.ttf \
	TTFGaruda-Bold.ttf \
	TTFGaruda-Oblique.ttf \
	TTFGaruda.ttf \
	TTFNorasi-BoldItalic.ttf \
	TTFNorasi-BoldOblique.ttf \
	TTFNorasi-Bold.ttf \
	TTFNorasi-Oblique.ttf \
	TTFNorasi-Italic.ttf \
	TTFNorasi.ttf

OTFFILES = \
	Kinnari-Italic.otf \
	Kinnari-BoldItalic.otf \
	Kinnari-BoldOblique.otf \
	Kinnari-Bold.otf \
	Kinnari-Oblique.otf \
	Kinnari.otf \
	Garuda-BoldOblique.otf \
	Garuda-Bold.otf \
	Garuda-Oblique.otf \
	Garuda.otf \
	Norasi-BoldItalic.otf \
	Norasi-BoldOblique.otf \
	Norasi-Bold.otf \
	Norasi-Oblique.otf \
	Norasi-Italic.otf \
	Norasi.otf

TESTOTFFILES = \
	OTFKinnari-Italic.otf \
	OTFKinnari-BoldItalic.otf \
	OTFKinnari-BoldOblique.otf \
	OTFKinnari-Bold.otf \
	OTFKinnari-Oblique.otf \
	OTFKinnari.otf \
	OTFGaruda-BoldOblique.otf \
	OTFGaruda-Bold.otf \
	OTFGaruda-Oblique.otf \
	OTFGaruda.otf \
	OTFNorasi-BoldItalic.otf \
	OTFNorasi-BoldOblique.otf \
	OTFNorasi-Bold.otf \
	OTFNorasi-Oblique.otf \
	OTFNorasi-Italic.otf \
	OTFNorasi.otf

PFAFILES = \
	Kinnari-Italic.pfa \
	Kinnari-BoldItalic.pfa \
	Kinnari-BoldOblique.pfa \
	Kinnari-Bold.pfa \
	Kinnari-Oblique.pfa \
	Kinnari.pfa \
	Garuda-BoldOblique.pfa \
	Garuda-Bold.pfa \
	Garuda-Oblique.pfa \
	Garuda.pfa \
	Norasi-BoldItalic.pfa \
	Norasi-BoldOblique.pfa \
	Norasi-Bold.pfa \
	Norasi-Oblique.pfa \
	Norasi-Italic.pfa \
	Norasi.pfa

PFBFILES = \
	Kinnari-Italic.pfb \
	Kinnari-BoldItalic.pfb \
	Kinnari-BoldOblique.pfb \
	Kinnari-Bold.pfb \
	Kinnari-Oblique.pfb \
	Kinnari.pfb \
	Garuda-BoldOblique.pfb \
	Garuda-Bold.pfb \
	Garuda-Oblique.pfb \
	Garuda.pfb \
	Norasi-BoldItalic.pfb \
	Norasi-BoldOblique.pfb \
	Norasi-Bold.pfb \
	Norasi-Oblique.pfb \
	Norasi-Italic.pfb \
	Norasi.pfb

TYPE1FILES =
if INCLUDE_PFA
TYPE1FILES += $(PFAFILES)
endif
if INCLUDE_PFB
TYPE1FILES += $(PFBFILES)
endif

TESTTYPE1FILES = \
	PSKinnari-Italic.pfb \
	PSKinnari-BoldItalic.pfb \
	PSKinnari-BoldOblique.pfb \
	PSKinnari-Bold.pfb \
	PSKinnari-Oblique.pfb \
	PSKinnari.pfb \
	PSGaruda-BoldOblique.pfb \
	PSGaruda-Bold.pfb \
	PSGaruda-Oblique.pfb \
	PSGaruda.pfb \
	PSNorasi-BoldItalic.pfb \
	PSNorasi-BoldOblique.pfb \
	PSNorasi-Bold.pfb \
	PSNorasi-Oblique.pfb \
	PSNorasi-Italic.pfb \
	PSNorasi.pfb

MAINTAINERCLEANFILES = Makefile.in
CLEANFILES = *.ttf *.g2n *.pfb *.pfa *.afm *.pfm *.otf *.enc *.tfm

EXTRA_DIST = $(FONTSOURCES) README.1ST

if INCLUDE_TTF
ttf_DATA = $(TTFFILES)
endif

if INCLUDE_TYPE1
type1_DATA = $(TYPE1FILES)
endif

if INCLUDE_OTF
otf_DATA = $(OTFFILES)
endif

if INCLUDE_TESTFONT
testfont_DATA = $(TESTTTFFILES) $(TESTTYPE1FILES) $(TESTOTFFILES)
endif

include $(top_builddir)/scripts/gen.mk
