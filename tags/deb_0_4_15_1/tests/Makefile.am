TESTS_ENVIRONMENT = top_builddir=$(top_builddir);top_srcdir=$(top_srcdir)

EXTRA_DIST = \
	test-ttf.sh \
	test-pfa.sh \
	test-pfb.sh \
	test-otf.sh \
	gen-pdfsample.sh

CONFTESTS=
if INCLUDE_TESTFONT
if INCLUDE_TTF
CONFTESTS += test-ttf.sh
endif
#if INCLUDE_PFA
#CONFTESTS += test-pfa.sh
#endif
if INCLUDE_PFB
CONFTESTS += test-pfb.sh
endif
#if INCLUDE_OTF
#CONFTESTS += test-otf.sh
#endif
endif

TESTS = $(CONFTESTS)

CLEANFILES = *.pdf

check_SCRIPTS = \
	test-ttf.sh \
	test-pfa.sh \
	test-pfb.sh \
	test-otf.sh \
	gen-pdfsample.sh

