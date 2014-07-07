SUBDIRS = examples

FD_FILES = \
	lthkinnari.fd lthgaruda.fd lthnorasi.fd \
	lthttype.fd lthttypist.fd \
	lthpurisa.fd lthloma.fd \
	lthwaree.fd lthumpush.fd \
	lthsawasdee.fd \
	lthlaksaman.fd

EXTRA_DIST = \
	README.latex \
	texfont.mk.am \
	fonts-tlwg.sty \
	lthtlwg.enc \
	thailigs.enc \
	thai-dummy.afm \
	$(FD_FILES)

if INCLUDE_LATEX

encdir = $(texmfdir)/fonts/enc/dvips/$(LATEX_PACKAGE)
enc_DATA = lthtlwg.enc

latexdir = $(texmfdir)/tex/latex/$(LATEX_PACKAGE)
latex_DATA = fonts-tlwg.sty $(FD_FILES)

doc_DATA = README.latex

endif

