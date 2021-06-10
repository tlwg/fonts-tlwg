FONTSOURCES = \
	Loma-BoldOblique.sfd \
	Loma-Bold.sfd \
	Loma-Oblique.sfd \
	Loma.sfd

EXTRA_DIST = $(FONTSOURCES)

include $(top_srcdir)/scripts/gen.mk.am

if INCLUDE_LATEX

loma.afm:    Loma.afm
loma_b.afm:  Loma-Bold.afm
loma_o.afm:  Loma-Oblique.afm
loma_bo.afm: Loma-BoldOblique.afm
loma.pfb:    Loma.pfb
loma_b.pfb:  Loma-Bold.pfb
loma_o.pfb:  Loma-Oblique.pfb
loma_bo.pfb: Loma-BoldOblique.pfb
	[ -e $@ ] || $(LN_S) $< $@

FONTS = \
	loma \
	loma_b \
	loma_o \
	loma_bo

MAP = nectec.map

include $(top_srcdir)/latex/texfont.mk.am

endif # INCLUDE_LATEX
