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

TESTTTFFILES = \
	TTFDBThaiText-BoldOblique.ttf \
	TTFDBThaiText-Bold.ttf \
	TTFDBThaiText-Oblique.ttf \
	TTFDBThaiText.ttf

OTFFILES = \
	DBThaiText-BoldOblique.otf \
	DBThaiText-Bold.otf \
	DBThaiText-Oblique.otf \
	DBThaiText.otf

TESTOTFFILES = \
	OTFDBThaiText-BoldOblique.otf \
	OTFDBThaiText-Bold.otf \
	OTFDBThaiText-Oblique.otf \
	OTFDBThaiText.otf

PFAFILES = \
	DBThaiText-BoldOblique.pfa \
	DBThaiText-Bold.pfa \
	DBThaiText-Oblique.pfa \
	DBThaiText.pfa

PFBFILES = \
	DBThaiText-BoldOblique.pfb \
	DBThaiText-Bold.pfb \
	DBThaiText-Oblique.pfb \
	DBThaiText.pfb

TYPE1FILES =
if INCLUDE_PFA
TYPE1FILES += $(PFAFILES)
endif
if INCLUDE_PFB
TYPE1FILES += $(PFBFILES)
endif

TESTTYPE1FILES = \
	PSDBThaiText-BoldOblique.pfb \
	PSDBThaiText-Bold.pfb \
	PSDBThaiText-Oblique.pfb \
	PSDBThaiText.pfb

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
