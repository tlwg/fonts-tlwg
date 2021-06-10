FONTSOURCES = \
	Laksaman-BoldItalic.sfd \
	Laksaman-Bold.sfd \
	Laksaman-Italic.sfd \
	Laksaman.sfd

EXTRA_DIST = $(FONTSOURCES)

include $(top_srcdir)/scripts/gen.mk.am

if INCLUDE_LATEX

laksaman.afm:    Laksaman.afm
laksaman_b.afm:  Laksaman-Bold.afm
laksaman_i.afm:  Laksaman-Italic.afm
laksaman_bi.afm: Laksaman-BoldItalic.afm
laksaman.pfb:    Laksaman.pfb
laksaman_b.pfb:  Laksaman-Bold.pfb
laksaman_i.pfb:  Laksaman-Italic.pfb
laksaman_bi.pfb: Laksaman-BoldItalic.pfb
	[ -e $@ ] || $(LN_S) $< $@

FONTS = \
	laksaman \
	laksaman_b \
	laksaman_i \
	laksaman_bi

MAP = sipa.map

include $(top_srcdir)/latex/texfont.mk.am

endif # INCLUDE_LATEX
