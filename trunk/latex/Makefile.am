SUBDIRS = examples

FD_FILES = \
	lthkinnari.fd lthgaruda.fd lthnorasi.fd \
	lthttype.fd lthttypist.fd \
	lthpurisa.fd lthloma.fd \
	lthwaree.fd lthumpush.fd \
	lthsawasdee.fd

EXTRA_DIST = \
	texfont.mk.am \
	fonts-tlwg.sty \
	$(FD_FILES)

if INCLUDE_LATEX

latexdir = $(texmfdir)/tex/latex/$(LATEX_PACKAGE)
latex_DATA = fonts-tlwg.sty $(FD_FILES)

endif

