MAINTAINERCLEANFILES = Makefile.in configure aclocal.m4

EXTRA_DIST = ChangeLog.thai-ttf

SUBDIRS = scripts nf db

ttfdir = @ttfdir@
mkfontscale = @MKFONTSCALE@
fccache = @FCCACHE@

install-data-hook:
	mkdir -p $(DESTDIR)$(ttfdir)
	cd $(DESTDIR)$(ttfdir); \
	$(mkfontscale); \
	mkfontdir -e /usr/X11R6/lib/X11/fonts/encodings
	$(fccache)

uninstall-hook:
	$(RM) $(DESTDIR)$(ttfdir)/fonts.dir
	$(RM) $(DESTDIR)$(ttfdir)/fonts.scale
	$(RM) $(DESTDIR)$(ttfdir)/encodings.dir
	cd $(DESTDIR)$(ttfdir); \
	$(mkfontscale); \
	if test `head -1 fonts.scale` -gt 0; then \
		mkfontdir -e /usr/X11R6/lib/X11/fonts/encodings; \
	else \
		$(RM) $(DESTDIR)$(ttfdir)/fonts.scale; \
		$(RMDIR) $(DESTDIR)$(ttfdir); \
	fi
	$(fccache)

