FONTSOURCES = \
	TlwgMono.sfd \
	TlwgMono-Bold.sfd \
	TlwgMono-Oblique.sfd \
	TlwgMono-BoldOblique.sfd \
	TlwgTypewriter.sfd \
	TlwgTypewriter-Bold.sfd \
	TlwgTypewriter-Oblique.sfd \
	TlwgTypewriter-BoldOblique.sfd \
	Purisa.sfd

TTFFILES = \
	TlwgMono.ttf \
	TlwgMono-Bold.ttf \
	TlwgMono-Oblique.ttf \
	TlwgMono-BoldOblique.ttf \
	TlwgTypewriter.ttf \
	TlwgTypewriter-Bold.ttf \
	TlwgTypewriter-Oblique.ttf \
	TlwgTypewriter-BoldOblique.ttf \
	Purisa.ttf

TESTTTFFILES = \
	TTFTlwgMono.ttf \
	TTFTlwgMono-Bold.ttf \
	TTFTlwgMono-Oblique.ttf \
	TTFTlwgMono-BoldOblique.ttf \
	TTFTlwgTypewriter.ttf \
	TTFTlwgTypewriter-Bold.ttf \
	TTFTlwgTypewriter-Oblique.ttf \
	TTFTlwgTypewriter-BoldOblique.ttf \
	TTFPurisa.ttf

OTFFILES = \
	TlwgMono.otf \
	TlwgMono-Bold.otf \
	TlwgMono-Oblique.otf \
	TlwgMono-BoldOblique.otf \
	TlwgTypewriter.otf \
	TlwgTypewriter-Bold.otf \
	TlwgTypewriter-Oblique.otf \
	TlwgTypewriter-BoldOblique.otf \
	Purisa.otf

TESTOTFFILES = \
	OTFTlwgMono.otf \
	OTFTlwgMono-Bold.otf \
	OTFTlwgMono-Oblique.otf \
	OTFTlwgMono-BoldOblique.otf \
	OTFTlwgTypewriter.otf \
	OTFTlwgTypewriter-Bold.otf \
	OTFTlwgTypewriter-Oblique.otf \
	OTFTlwgTypewriter-BoldOblique.otf \
	OTFPurisa.otf

PFAFILES = \
	TlwgMono.pfa \
	TlwgMono-Bold.pfa \
	TlwgMono-Oblique.pfa \
	TlwgMono-BoldOblique.pfa \
	TlwgTypewriter.pfa \
	TlwgTypewriter-Bold.pfa \
	TlwgTypewriter-Oblique.pfa \
	TlwgTypewriter-BoldOblique.pfa \
	Purisa.pfa

PFBFILES = \
	TlwgMono.pfb \
	TlwgMono-Bold.pfb \
	TlwgMono-Oblique.pfb \
	TlwgMono-BoldOblique.pfb \
	TlwgTypewriter.pfb \
	TlwgTypewriter-Bold.pfb \
	TlwgTypewriter-Oblique.pfb \
	TlwgTypewriter-BoldOblique.pfb \
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
	PSTlwgTypewriter.pfb \
	PSTlwgTypewriter-Bold.pfb \
	PSTlwgTypewriter-Oblique.pfb \
	PSTlwgTypewriter-BoldOblique.pfb \
	PSPurisa.pfb

MAINTAINERCLEANFILES = Makefile.in
CLEANFILES = *.ttf *.g2n *.pfb *.pfa *.afm *.pfm *.otf *.enc *.tfm

EXTRA_DIST = $(FONTSOURCES) CREDITS

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
