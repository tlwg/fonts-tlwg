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
kinnari_b.afm:  Kinnari-Bold.afm
kinnari_o.afm:  Kinnari-Oblique.afm
kinnari_i.afm:  Kinnari-Italic.afm
kinnari_bo.afm: Kinnari-BoldOblique.afm
kinnari_bi.afm: Kinnari-BoldItalic.afm
garuda.afm:     Garuda.afm
garuda_b.afm:   Garuda-Bold.afm
garuda_o.afm:   Garuda-Oblique.afm
garuda_bo.afm:  Garuda-BoldOblique.afm
norasi.afm:     Norasi.afm
norasi_b.afm:   Norasi-Bold.afm
norasi_o.afm:   Norasi-Oblique.afm
norasi_i.afm:   Norasi-Italic.afm
norasi_bo.afm:  Norasi-BoldOblique.afm
norasi_bi.afm:  Norasi-BoldItalic.afm
kinnari.pfb:    Kinnari.pfb
kinnari_b.pfb:  Kinnari-Bold.pfb
kinnari_o.pfb:  Kinnari-Oblique.pfb
kinnari_i.pfb:  Kinnari-Italic.pfb
kinnari_bo.pfb: Kinnari-BoldOblique.pfb
kinnari_bi.pfb: Kinnari-BoldItalic.pfb
garuda.pfb:     Garuda.pfb
garuda_b.pfb:   Garuda-Bold.pfb
garuda_o.pfb:   Garuda-Oblique.pfb
garuda_bo.pfb:  Garuda-BoldOblique.pfb
norasi.pfb:     Norasi.pfb
norasi_b.pfb:   Norasi-Bold.pfb
norasi_o.pfb:   Norasi-Oblique.pfb
norasi_i.pfb:   Norasi-Italic.pfb
norasi_bo.pfb:  Norasi-BoldOblique.pfb
norasi_bi.pfb:  Norasi-BoldItalic.pfb
	[ -e $@ ] || $(LN_S) $< $@

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

SYNTH_FONTS = \
	norasi-sc \
	norasi_b-sc \
	norasi_o-sc \
	norasi_i-sc \
	norasi_bo-sc \
	norasi_bi-sc \
	$(NULL)

MAP = nf.map

include $(top_srcdir)/latex/texfont.mk.am

endif # INCLUDE_LATEX
