MAINTAINERCLEANFILES = Makefile.in configure aclocal.m4

EXTRA_DIST = ChangeLog.thai-ttf

SUBDIRS = scripts nf db

fontdir = @fontdir@
mkfontscale = @MKFONTSCALE@
fccache = @FCCACHE@

install-data-hook:
	mkdir -p $(DESTDIR)$(fontdir)
	cd $(DESTDIR)$(fontdir); \
	$(mkfontscale); \
	mkfontdir -e /usr/X11R6/lib/X11/fonts/encodings
	$(fccache)

uninstall-hook:
	$(RM) $(DESTDIR)$(fontdir)/fonts.dir
	$(RM) $(DESTDIR)$(fontdir)/fonts.scale
	$(RM) $(DESTDIR)$(fontdir)/encodings.dir
	cd $(DESTDIR)$(fontdir); \
	$(mkfontscale); \
	if test `head -1 fonts.scale` -gt 0; then \
		mkfontdir -e /usr/X11R6/lib/X11/fonts/encodings; \
	else \
		$(RM) $(DESTDIR)$(fontdir)/fonts.scale; \
		$(RMDIR) $(DESTDIR)$(fontdir); \
	fi
	$(fccache)

