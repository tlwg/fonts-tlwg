FONTSOURCES = \
	TlwgMono.sfd \
	PseudoMono.sfd \
	PseudoMono-Bold.sfd

TTFFILES = \
	TlwgMono.ttf \
	PseudoMono.ttf \
	PseudoMono-Bold.ttf

TESTTTFFILES = \
	TTFTlwgMono.ttf \
	TTFPseudoMono.ttf \
	TTFPseudoMono-Bold.ttf

OTFFILES = \
	TlwgMono.otf \
	PseudoMono.otf \
	PseudoMono-Bold.otf

TESTOTFFILES = \
	OTFTlwgMono.otf \
	OTFPseudoMono.otf \
	OTFPseudoMono-Bold.otf

PFAFILES = \
	TlwgMono.pfa \
	PseudoMono.pfa \
	PseudoMono-Bold.pfa

PFBFILES = \
	TlwgMono.pfb \
	PseudoMono.pfb \
	PseudoMono-Bold.pfb

TYPE1FILES =
if INCLUDE_PFA
TYPE1FILES += $(PFAFILES)
endif
if INCLUDE_PFB
TYPE1FILES += $(PFBFILES)
endif

TESTTYPE1FILES = \
	PSTlwgMono.pfb \
	PSPseudoMono.pfb \
	PSPseudoMono-Bold.pfb

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
testfont_DATA = $(TESTTTFFILES) $(TESTTYPE1FILES) $(TESTOTFFILES)
endif

include $(top_builddir)/scripts/gen.mk
