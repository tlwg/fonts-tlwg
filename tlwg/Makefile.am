FONTSOURCES = \
	TlwgMono.sfd

TTFFILES = \
	TlwgMono.ttf

TESTTTFFILES = \
	TTFTlwgMono.ttf

OTFFILES = \
	TTFTlwgMono.otf

TESTOTFFILES = \
	OTFTlwgMono.otf

PFAFILES = \
	TlwgMono.pfa

PFBFILES = \
	TlwgMono.pfb

TYPE1FILES =
if INCLUDE_PFA
TYPE1FILES += $(PFAFILES)
endif
if INCLUDE_PFB
TYPE1FILES += $(PFBFILES)
endif

TESTTYPE1FILES = \
	PSTlwgMono.pfb

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
