SUFFIXES: .sfd .ttf .otf .pfa .pfb

TTF%.ttf: %.sfd
	$(FONTFORGE) -script $(top_srcdir)/scripts/gen-test-ttf.pe $<

OTF%.otf: %.sfd
	$(FONTFORGE) -script $(top_srcdir)/scripts/gen-test-otf.pe $<

PS%.afm PS%.pfa: %.sfd
	$(FONTFORGE) -script $(top_srcdir)/scripts/gen-test-pfa.pe $<

PS%.afm PS%.pfb: %.sfd
	$(FONTFORGE) -script $(top_srcdir)/scripts/gen-test-pfb.pe $<

%.ttf: %.sfd
	$(FONTFORGE) -script $(top_srcdir)/scripts/gen-ttf.pe $<

%.otf: %.sfd
	$(FONTFORGE) -script $(top_srcdir)/scripts/gen-otf.pe $<

%.afm %.pfa: %.sfd
	$(FONTFORGE) -script $(top_srcdir)/scripts/gen-pfa.pe $<

%.afm %.pfb: %.sfd
	$(FONTFORGE) -script $(top_srcdir)/scripts/gen-pfb.pe $<
