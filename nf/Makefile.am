FONTSOURCES = \
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

AFMFILES = \
	Garuda-BoldOblique.afm \
	Garuda-Bold.afm \
	Garuda-Oblique.afm \
	Garuda.afm \
	Norasi-BoldItalic.afm \
	Norasi-BoldOblique.afm \
	Norasi-Bold.afm \
	Norasi-Oblique.afm \
	Norasi-Italic.afm \
	Norasi.afm

PFAFILES = \
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
TYPE1FILES += $(PFAFILES) $(AFMFILES)
endif
if INCLUDE_PFB
TYPE1FILES += $(PFBFILES) $(AFMFILES)
endif

TESTAFMFILES = \
	PSGaruda-BoldOblique.afm \
	PSGaruda-Bold.afm \
	PSGaruda-Oblique.afm \
	PSGaruda.afm \
	PSNorasi-BoldItalic.afm \
	PSNorasi-BoldOblique.afm \
	PSNorasi-Bold.afm \
	PSNorasi-Oblique.afm \
	PSNorasi-Italic.afm \
	PSNorasi.afm

TESTTYPE1FILES = \
	$(TESTAFMFLES) \
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
