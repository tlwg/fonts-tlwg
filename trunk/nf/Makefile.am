FONTSOURCES = \
	Kinnari-BoldItalic.sfd \
	Kinnari-BoldOblique.sfd \
	Kinnari-Bold.sfd \
	Kinnari-Oblique.sfd \
	Kinnari-Italic.sfd \
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

include $(top_srcdir)/scripts/gen.mk
