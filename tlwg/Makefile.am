FONTSOURCES = \
	TlwgMono.sfd \
	TlwgMono-Bold.sfd \
	TlwgMono-Oblique.sfd \
	TlwgMono-BoldOblique.sfd \
	TlwgTypewriter.sfd \
	TlwgTypewriter-Bold.sfd \
	TlwgTypewriter-Oblique.sfd \
	TlwgTypewriter-BoldOblique.sfd \
	TlwgTypist.sfd \
	TlwgTypist-Bold.sfd \
	TlwgTypist-Oblique.sfd \
	TlwgTypist-BoldOblique.sfd \
	TlwgTypo.sfd \
	TlwgTypo-Bold.sfd \
	TlwgTypo-Oblique.sfd \
	TlwgTypo-BoldOblique.sfd \
	Purisa.sfd \
	Purisa-Bold.sfd \
	Purisa-Oblique.sfd \
	Purisa-BoldOblique.sfd \
	Sawasdee-BoldOblique.sfd \
	Sawasdee-Bold.sfd \
	Sawasdee-Oblique.sfd \
	Sawasdee.sfd \
	Waree-BoldOblique.sfd \
	Waree-Bold.sfd \
	Waree-Oblique.sfd \
	Waree.sfd \
	Umpush-BoldOblique.sfd \
	Umpush-Bold.sfd \
	Umpush-LightOblique.sfd \
	Umpush-Light.sfd \
	Umpush-Oblique.sfd \
	Umpush.sfd

EXTRA_DIST = $(FONTSOURCES) CREDITS README.tlwgmono

include $(top_srcdir)/scripts/gen.mk.am

if INCLUDE_LATEX

ttype.afm:       TlwgTypewriter.afm
ttype_b.afm:     TlwgTypewriter-Bold.afm
ttype_o.afm:     TlwgTypewriter-Oblique.afm
ttype_bo.afm:    TlwgTypewriter-BoldOblique.afm
ttypist.afm:     TlwgTypist.afm
ttypist_b.afm:   TlwgTypist-Bold.afm
ttypist_o.afm:   TlwgTypist-Oblique.afm
ttypist_bo.afm:  TlwgTypist-BoldOblique.afm
purisa.afm:      Purisa.afm
purisa_b.afm:    Purisa-Bold.afm
purisa_o.afm:    Purisa-Oblique.afm
purisa_bo.afm:   Purisa-BoldOblique.afm
waree.afm:       Waree.afm
waree_b.afm:     Waree-Bold.afm
waree_o.afm:     Waree-Oblique.afm
waree_bo.afm:    Waree-BoldOblique.afm
umpush.afm:      Umpush.afm
umpush_b.afm:    Umpush-Bold.afm
umpush_l.afm:    Umpush-Light.afm
umpush_o.afm:    Umpush-Oblique.afm
umpush_bo.afm:   Umpush-BoldOblique.afm
umpush_lo.afm:   Umpush-LightOblique.afm
sawasdee.afm:    Sawasdee.afm
sawasdee_b.afm:  Sawasdee-Bold.afm
sawasdee_o.afm:  Sawasdee-Oblique.afm
sawasdee_bo.afm: Sawasdee-BoldOblique.afm
ttype.pfb:       TlwgTypewriter.pfb
ttype_b.pfb:     TlwgTypewriter-Bold.pfb
ttype_o.pfb:     TlwgTypewriter-Oblique.pfb
ttype_bo.pfb:    TlwgTypewriter-BoldOblique.pfb
ttypist.pfb:     TlwgTypist.pfb
ttypist_b.pfb:   TlwgTypist-Bold.pfb
ttypist_o.pfb:   TlwgTypist-Oblique.pfb
ttypist_bo.pfb:  TlwgTypist-BoldOblique.pfb
purisa.pfb:      Purisa.pfb
purisa_b.pfb:    Purisa-Bold.pfb
purisa_o.pfb:    Purisa-Oblique.pfb
purisa_bo.pfb:   Purisa-BoldOblique.pfb
waree.pfb:       Waree.pfb
waree_b.pfb:     Waree-Bold.pfb
waree_o.pfb:     Waree-Oblique.pfb
waree_bo.pfb:    Waree-BoldOblique.pfb
umpush.pfb:      Umpush.pfb
umpush_b.pfb:    Umpush-Bold.pfb
umpush_l.pfb:    Umpush-Light.pfb
umpush_o.pfb:    Umpush-Oblique.pfb
umpush_bo.pfb:   Umpush-BoldOblique.pfb
umpush_lo.pfb:   Umpush-LightOblique.pfb
sawasdee.pfb:    Sawasdee.pfb
sawasdee_b.pfb:  Sawasdee-Bold.pfb
sawasdee_o.pfb:  Sawasdee-Oblique.pfb
sawasdee_bo.pfb: Sawasdee-BoldOblique.pfb
	[ -e $@ ] || $(LN_S) $< $@

FONTS = \
	ttype \
	ttype_b \
	ttype_o \
	ttype_bo \
	ttypist \
	ttypist_b \
	ttypist_o \
	ttypist_bo \
	purisa \
	purisa_b \
	purisa_o \
	purisa_bo \
	waree \
	waree_b \
	waree_o \
	waree_bo \
	umpush \
	umpush_b \
	umpush_l \
	umpush_o \
	umpush_bo \
	umpush_lo \
	sawasdee \
	sawasdee_b \
	sawasdee_o \
	sawasdee_bo

MAP = tlwg.map

include $(top_srcdir)/latex/texfont.mk.am

endif # INCLUDE_LATEX
