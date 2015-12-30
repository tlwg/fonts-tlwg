FONTSOURCES = \
	Laksaman-BoldItalic.sfd \
	Laksaman-Bold.sfd \
	Laksaman-Italic.sfd \
	Laksaman.sfd

EXTRA_DIST = $(FONTSOURCES)

include $(top_srcdir)/scripts/gen.mk.am

if INCLUDE_LATEX

laksaman.afm:    Laksaman.afm
	[ -f $@ ] || $(LN_S) $< $@
laksaman_b.afm:  Laksaman-Bold.afm
	[ -f $@ ] || $(LN_S) $< $@
laksaman_i.afm:  Laksaman-Italic.afm
	[ -f $@ ] || $(LN_S) $< $@
laksaman_bi.afm: Laksaman-BoldItalic.afm
	[ -f $@ ] || $(LN_S) $< $@
laksaman.pfb:    Laksaman.pfb
	[ -f $@ ] || $(LN_S) $< $@
laksaman_b.pfb:  Laksaman-Bold.pfb
	[ -f $@ ] || $(LN_S) $< $@
laksaman_i.pfb:  Laksaman-Italic.pfb
	[ -f $@ ] || $(LN_S) $< $@
laksaman_bi.pfb: Laksaman-BoldItalic.pfb
	[ -f $@ ] || $(LN_S) $< $@

FONTS = \
	laksaman \
	laksaman_b \
	laksaman_i \
	laksaman_bi

MAP = sipa.map

include $(top_srcdir)/latex/texfont.mk.am

endif # INCLUDE_LATEX
