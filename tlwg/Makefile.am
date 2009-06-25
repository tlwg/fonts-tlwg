FONTSOURCES = \
	TlwgMono.sfd \
	TlwgMono-Bold.sfd \
	TlwgMono-Oblique.sfd \
	TlwgMono-BoldOblique.sfd \
	TlwgTypewriter.sfd \
	TlwgTypewriter-Bold.sfd \
	TlwgTypewriter-Oblique.sfd \
	TlwgTypewriter-BoldOblique.sfd \
	TlwgTypist.sfd \
	TlwgTypist-Bold.sfd \
	TlwgTypist-Oblique.sfd \
	TlwgTypist-BoldOblique.sfd \
	TlwgTypo.sfd \
	TlwgTypo-Bold.sfd \
	TlwgTypo-Oblique.sfd \
	TlwgTypo-BoldOblique.sfd \
	Purisa.sfd \
	SawasdeeBoldOblique.sfd \
	SawasdeeBold.sfd \
	SawasdeeOblique.sfd \
	Sawasdee.sfd \
	Waree-BoldOblique.sfd \
	Waree-Bold.sfd \
	Waree-Oblique.sfd \
	Waree.sfd \
	Umpush-BoldOblique.sfd \
	Umpush-Bold.sfd \
	Umpush-LightOblique.sfd \
	Umpush-Light.sfd \
	Umpush-Oblique.sfd \
	Umpush.sfd

TTFFILES = $(FONTSOURCES:.sfd=.ttf)
OTFFILES = $(FONTSOURCES:.sfd=.otf)
AFMFILES = $(FONTSOURCES:.sfd=.afm)
PFAFILES = $(FONTSOURCES:.sfd=.pfa)
PFBFILES = $(FONTSOURCES:.sfd=.pfb)

TESTTTFFILES = $(TTFFILES:[-A-Za-z]%.ttf=TTF%.ttf)
TESTOTFFILES = $(OTFFILES:[-A-Za-z]%.otf=OTF%.otf)

TESTAFMFILES = $(AFMFILES:[-A-Za-z]*.afm=PS%.afm)
TESTPFBFLES  = $(PFBFILES:[-A-Za-z]*.pfb=PS%.pfb)
TESTTYPE1FILES = $(TESTPFBFILES) $(TESTAFMFILES)

TYPE1FILES =
if INCLUDE_PFA
TYPE1FILES += $(PFAFILES) $(AFMFILES)
endif
if INCLUDE_PFB
TYPE1FILES += $(PFBFILES) $(AFMFILES)
endif

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

include $(top_srcdir)/scripts/gen.mk
