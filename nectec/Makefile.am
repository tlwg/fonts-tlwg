FONTSOURCES = \
	Loma-BoldOblique.sfd \
	Loma-Bold.sfd \
	Loma-Oblique.sfd \
	Loma.sfd

EXTRA_DIST = $(FONTSOURCES)

include $(top_srcdir)/scripts/gen.mk.am

if INCLUDE_LATEX

loma.afm:    Loma.afm
	[ -f $@ ] || $(LN_S) $< $@
loma_b.afm:  Loma-Bold.afm
	[ -f $@ ] || $(LN_S) $< $@
loma_o.afm:  Loma-Oblique.afm
	[ -f $@ ] || $(LN_S) $< $@
loma_bo.afm: Loma-BoldOblique.afm
	[ -f $@ ] || $(LN_S) $< $@
loma.pfb:    Loma.pfb
	[ -f $@ ] || $(LN_S) $< $@
loma_b.pfb:  Loma-Bold.pfb
	[ -f $@ ] || $(LN_S) $< $@
loma_o.pfb:  Loma-Oblique.pfb
	[ -f $@ ] || $(LN_S) $< $@
loma_bo.pfb: Loma-BoldOblique.pfb
	[ -f $@ ] || $(LN_S) $< $@

FONTS = \
	loma \
	loma_b \
	loma_o \
	loma_bo

MAP = nectec.map

include $(top_srcdir)/latex/texfont.mk.am

endif # INCLUDE_LATEX
