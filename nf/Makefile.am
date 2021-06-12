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
	[ -e $@ ] || $(LN_S) $< $@
kinnari_b.afm:  Kinnari-Bold.afm
	[ -e $@ ] || $(LN_S) $< $@
kinnari_o.afm:  Kinnari-Oblique.afm
	[ -e $@ ] || $(LN_S) $< $@
kinnari_i.afm:  Kinnari-Italic.afm
	[ -e $@ ] || $(LN_S) $< $@
kinnari_bo.afm: Kinnari-BoldOblique.afm
	[ -e $@ ] || $(LN_S) $< $@
kinnari_bi.afm: Kinnari-BoldItalic.afm
	[ -e $@ ] || $(LN_S) $< $@
garuda.afm:     Garuda.afm
	[ -e $@ ] || $(LN_S) $< $@
garuda_b.afm:   Garuda-Bold.afm
	[ -e $@ ] || $(LN_S) $< $@
garuda_o.afm:   Garuda-Oblique.afm
	[ -e $@ ] || $(LN_S) $< $@
garuda_bo.afm:  Garuda-BoldOblique.afm
	[ -e $@ ] || $(LN_S) $< $@
norasi.afm:     Norasi.afm
	[ -e $@ ] || $(LN_S) $< $@
norasi_b.afm:   Norasi-Bold.afm
	[ -e $@ ] || $(LN_S) $< $@
norasi_o.afm:   Norasi-Oblique.afm
	[ -e $@ ] || $(LN_S) $< $@
norasi_i.afm:   Norasi-Italic.afm
	[ -e $@ ] || $(LN_S) $< $@
norasi_bo.afm:  Norasi-BoldOblique.afm
	[ -e $@ ] || $(LN_S) $< $@
norasi_bi.afm:  Norasi-BoldItalic.afm
	[ -e $@ ] || $(LN_S) $< $@
kinnari.pfb:    Kinnari.pfb
	[ -e $@ ] || $(LN_S) $< $@
kinnari_b.pfb:  Kinnari-Bold.pfb
	[ -e $@ ] || $(LN_S) $< $@
kinnari_o.pfb:  Kinnari-Oblique.pfb
	[ -e $@ ] || $(LN_S) $< $@
kinnari_i.pfb:  Kinnari-Italic.pfb
	[ -e $@ ] || $(LN_S) $< $@
kinnari_bo.pfb: Kinnari-BoldOblique.pfb
	[ -e $@ ] || $(LN_S) $< $@
kinnari_bi.pfb: Kinnari-BoldItalic.pfb
	[ -e $@ ] || $(LN_S) $< $@
garuda.pfb:     Garuda.pfb
	[ -e $@ ] || $(LN_S) $< $@
garuda_b.pfb:   Garuda-Bold.pfb
	[ -e $@ ] || $(LN_S) $< $@
garuda_o.pfb:   Garuda-Oblique.pfb
	[ -e $@ ] || $(LN_S) $< $@
garuda_bo.pfb:  Garuda-BoldOblique.pfb
	[ -e $@ ] || $(LN_S) $< $@
norasi.pfb:     Norasi.pfb
	[ -e $@ ] || $(LN_S) $< $@
norasi_b.pfb:   Norasi-Bold.pfb
	[ -e $@ ] || $(LN_S) $< $@
norasi_o.pfb:   Norasi-Oblique.pfb
	[ -e $@ ] || $(LN_S) $< $@
norasi_i.pfb:   Norasi-Italic.pfb
	[ -e $@ ] || $(LN_S) $< $@
norasi_bo.pfb:  Norasi-BoldOblique.pfb
	[ -e $@ ] || $(LN_S) $< $@
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
	norasi-osf \
	norasi_b-osf \
	norasi_o-osf \
	norasi_i-osf \
	norasi_bo-osf \
	norasi_bi-osf \
	norasi-osf-sc \
	norasi_b-osf-sc \
	norasi_o-osf-sc \
	norasi_i-osf-sc \
	norasi_bo-osf-sc \
	norasi_bi-osf-sc \
	$(NULL)

MAP = nf.map

include $(top_srcdir)/latex/texfont.mk.am

endif # INCLUDE_LATEX
