FONTSOURCES = \
	DBThaiText-BoldOblique.sfd \
	DBThaiText-Bold.sfd \
	DBThaiText-Oblique.sfd \
	DBThaiText.sfd

TTFFILES = $(shell echo $(FONTSOURCES) | sed 's/.sfd/.ttf/g')
OTFFILES = $(shell echo $(FONTSOURCES) | sed 's/.sfd/.otf/g')
AFMFILES = $(shell echo $(FONTSOURCES) | sed 's/.sfd/.afm/g')
PFAFILES = $(shell echo $(FONTSOURCES) | sed 's/.sfd/.pfa/g')
PFBFILES = $(shell echo $(FONTSOURCES) | sed 's/.sfd/.pfb/g')

TESTTTFFILES = $(shell echo $(TTFFILES) | sed 's/[-A-Za-z]*.ttf/TTF&/g')
TESTOTFFILES = $(shell echo $(OTFFILES) | sed 's/[-A-Za-z]*.otf/OTF&/g')

TESTAFMFILES = $(shell echo $(AFMFILES) | sed 's/[-A-Za-z]*.afm/PS&/g')
TESTPFBFLES = $(shell echo $(PFBFILES) | sed 's/[-A-Za-z]*.pfb/PS&/g')
TESTTYPE1FILES = $(TESTPFBFILES) $(TESTAFMFILES)

TYPE1FILES =
if INCLUDE_PFA
TYPE1FILES += $(PFAFILES)
endif
if INCLUDE_PFB
TYPE1FILES += $(PFBFILES)
endif

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
