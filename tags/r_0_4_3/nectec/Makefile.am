FONTSOURCES = \
	Loma-BoldOblique.sfd \
	Loma-Bold.sfd \
	Loma-Oblique.sfd \
	Loma.sfd

TTFFILES = \
	Loma-BoldOblique.ttf \
	Loma-Bold.ttf \
	Loma-Oblique.ttf \
	Loma.ttf

TESTTTFFILES = \
	TTFLoma-BoldOblique.ttf \
	TTFLoma-Bold.ttf \
	TTFLoma-Oblique.ttf \
	TTFLoma.ttf

OTFFILES = \
	Loma-BoldOblique.otf \
	Loma-Bold.otf \
	Loma-Oblique.otf \
	Loma.otf

TESTOTFFILES = \
	OTFLoma-BoldOblique.otf \
	OTFLoma-Bold.otf \
	OTFLoma-Oblique.otf \
	OTFLoma.otf

PFAFILES = \
	Loma-BoldOblique.pfa \
	Loma-Bold.pfa \
	Loma-Oblique.pfa \
	Loma.pfa

PFBFILES = \
	Loma-BoldOblique.pfb \
	Loma-Bold.pfb \
	Loma-Oblique.pfb \
	Loma.pfb

TYPE1FILES =
if INCLUDE_PFA
TYPE1FILES += $(PFAFILES)
endif
if INCLUDE_PFB
TYPE1FILES += $(PFBFILES)
endif

TESTTYPE1FILES = \
	PSLoma-BoldOblique.pfb \
	PSLoma-Bold.pfb \
	PSLoma-Oblique.pfb \
	PSLoma.pfb

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

if INCLUDE_TESTFONT
testfont_DATA = $(TESTTTFFILES)  $(TESTTYPE1FILES) $(TESTOTFFILES)
endif

include $(top_builddir)/scripts/gen.mk
