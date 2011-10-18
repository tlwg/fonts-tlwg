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

EXTRA_DIST = $(FONTSOURCES) README.1ST

include $(top_srcdir)/scripts/gen.mk.am

if INCLUDE_LATEX

kinnari.afm:    Kinnari.afm
	$(LN_S) $< $@
kinnari_b.afm:  Kinnari-Bold.afm
	$(LN_S) $< $@
kinnari_o.afm:  Kinnari-Oblique.afm
	$(LN_S) $< $@
kinnari_i.afm:  Kinnari-Italic.afm
	$(LN_S) $< $@
kinnari_bo.afm: Kinnari-BoldOblique.afm
	$(LN_S) $< $@
kinnari_bi.afm: Kinnari-BoldItalic.afm
	$(LN_S) $< $@
garuda.afm:     Garuda.afm
	$(LN_S) $< $@
garuda_b.afm:   Garuda-Bold.afm
	$(LN_S) $< $@
garuda_o.afm:   Garuda-Oblique.afm
	$(LN_S) $< $@
garuda_bo.afm:  Garuda-BoldOblique.afm
	$(LN_S) $< $@
norasi.afm:     Norasi.afm
	$(LN_S) $< $@
norasi_b.afm:   Norasi-Bold.afm
	$(LN_S) $< $@
norasi_o.afm:   Norasi-Oblique.afm
	$(LN_S) $< $@
norasi_i.afm:   Norasi-Italic.afm
	$(LN_S) $< $@
norasi_bo.afm:  Norasi-BoldOblique.afm
	$(LN_S) $< $@
norasi_bi.afm:  Norasi-BoldItalic.afm
	$(LN_S) $< $@
kinnari.pfb:    Kinnari.pfb
	$(LN_S) $< $@
kinnari_b.pfb:  Kinnari-Bold.pfb
	$(LN_S) $< $@
kinnari_o.pfb:  Kinnari-Oblique.pfb
	$(LN_S) $< $@
kinnari_i.pfb:  Kinnari-Italic.pfb
	$(LN_S) $< $@
kinnari_bo.pfb: Kinnari-BoldOblique.pfb
	$(LN_S) $< $@
kinnari_bi.pfb: Kinnari-BoldItalic.pfb
	$(LN_S) $< $@
garuda.pfb:     Garuda.pfb
	$(LN_S) $< $@
garuda_b.pfb:   Garuda-Bold.pfb
	$(LN_S) $< $@
garuda_o.pfb:   Garuda-Oblique.pfb
	$(LN_S) $< $@
garuda_bo.pfb:  Garuda-BoldOblique.pfb
	$(LN_S) $< $@
norasi.pfb:     Norasi.pfb
	$(LN_S) $< $@
norasi_b.pfb:   Norasi-Bold.pfb
	$(LN_S) $< $@
norasi_o.pfb:   Norasi-Oblique.pfb
	$(LN_S) $< $@
norasi_i.pfb:   Norasi-Italic.pfb
	$(LN_S) $< $@
norasi_bo.pfb:  Norasi-BoldOblique.pfb
	$(LN_S) $< $@
norasi_bi.pfb:  Norasi-BoldItalic.pfb
	$(LN_S) $< $@

FONTS = \
	kinnari \
	kinnari_b \
	kinnari_o \
	kinnari_i \
	kinnari_bo \
	kinnari_bi \
	garuda \
	garuda_b \
	garuda_o \
	garuda_bo \
	norasi \
	norasi_b \
	norasi_o \
	norasi_i \
	norasi_bo \
	norasi_bi

MAP = nf.map

include $(top_srcdir)/latex/texfont.mk.am

endif # INCLUDE_LATEX
