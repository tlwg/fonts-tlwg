FONTSOURCES = \
	TlwgMono.sfd \
	TlwgMono-Bold.sfd \
	TlwgMono-Oblique.sfd \
	TlwgMono-BoldOblique.sfd \
	PseudoMono.sfd \
	PseudoMono-Bold.sfd \
	PseudoMono-Oblique.sfd \
	PseudoMono-BoldOblique.sfd \
	Purisa.sfd

TTFFILES = \
	TlwgMono.ttf \
	TlwgMono-Bold.ttf \
	TlwgMono-Oblique.ttf \
	TlwgMono-BoldOblique.ttf \
	PseudoMono.ttf \
	PseudoMono-Bold.ttf \
	PseudoMono-Oblique.ttf \
	PseudoMono-BoldOblique.ttf \
	Purisa.ttf

TESTTTFFILES = \
	TTFTlwgMono.ttf \
	TTFTlwgMono-Bold.ttf \
	TTFTlwgMono-Oblique.ttf \
	TTFTlwgMono-BoldOblique.ttf \
	TTFPseudoMono.ttf \
	TTFPseudoMono-Bold.ttf \
	TTFPseudoMono-Oblique.ttf \
	TTFPseudoMono-BoldOblique.ttf \
	TTFPurisa.ttf

OTFFILES = \
	TlwgMono.otf \
	TlwgMono-Bold.otf \
	TlwgMono-Oblique.otf \
	TlwgMono-BoldOblique.otf \
	PseudoMono.otf \
	PseudoMono-Bold.otf \
	PseudoMono-Oblique.otf \
	PseudoMono-BoldOblique.otf \
	Purisa.otf

TESTOTFFILES = \
	OTFTlwgMono.otf \
	OTFTlwgMono-Bold.otf \
	OTFTlwgMono-Oblique.otf \
	OTFTlwgMono-BoldOblique.otf \
	OTFPseudoMono.otf \
	OTFPseudoMono-Bold.otf \
	OTFPseudoMono-Oblique.otf \
	OTFPseudoMono-BoldOblique.otf \
	OTFPurisa.otf

PFAFILES = \
	TlwgMono.pfa \
	TlwgMono-Bold.pfa \
	TlwgMono-Oblique.pfa \
	TlwgMono-BoldOblique.pfa \
	PseudoMono.pfa \
	PseudoMono-Bold.pfa \
	PseudoMono-Oblique.pfa \
	PseudoMono-BoldOblique.pfa \
	Purisa.pfa

PFBFILES = \
	TlwgMono.pfb \
	TlwgMono-Bold.pfb \
	TlwgMono-Oblique.pfb \
	TlwgMono-BoldOblique.pfb \
	PseudoMono.pfb \
	PseudoMono-Bold.pfb \
	PseudoMono-Oblique.pfb \
	PseudoMono-BoldOblique.pfb \
	Purisa.pfb

TYPE1FILES =
if INCLUDE_PFA
TYPE1FILES += $(PFAFILES)
endif
if INCLUDE_PFB
TYPE1FILES += $(PFBFILES)
endif

TESTTYPE1FILES = \
	PSTlwgMono.pfb \
	PSTlwgMono-Bold.pfb \
	PSTlwgMono-Oblique.pfb \
	PSTlwgMono-BoldOblique.pfb \
	PSPseudoMono.pfb \
	PSPseudoMono-Bold.pfb \
	PSPseudoMono-Oblique.pfb \
	PSPseudoMono-BoldOblique.pfb \
	PSPurisa.pfb

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
