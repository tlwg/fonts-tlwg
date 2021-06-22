SUBDIRS = examples

FD_FILES = \
	lthkinnari.fd lthgaruda.fd \
	lthnorasi.fd lthnorasij.fd \
	lthnorx.fd lthnorj.fd \
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
	lthtlwg-sc.enc \
	thailigs.enc \
	thailigs-sc.enc \
	lthtlwg-osf.enc \
	lthtlwg-osf-sc.enc \
	thailigs-osf.enc \
	thailigs-osf-sc.enc \
	thai-dummy.afm \
	$(FD_FILES)

if INCLUDE_LATEX

encdir = $(texmfdir)/fonts/enc/dvips/$(LATEX_PACKAGE)
enc_DATA = lthtlwg.enc lthtlwg-sc.enc lthtlwg-osf.enc lthtlwg-osf-sc.enc

latexdir = $(texmfdir)/tex/latex/$(LATEX_PACKAGE)
latex_DATA = fonts-tlwg.sty $(FD_FILES)

doc_DATA = README.latex

endif

