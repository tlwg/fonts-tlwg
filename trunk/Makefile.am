MAINTAINERCLEANFILES = Makefile.in configure aclocal.m4

EXTRA_DIST = ChangeLog.thai-ttf

SUBDIRS = scripts nf db

ttfdir = @ttfdir@
type1dir = @type1dir@
mkfontscale = @MKFONTSCALE@
type1inst = @TYPE1INST@
fccache = @FCCACHE@

install-data-hook:
if INCLUDE_TTF
	mkdir -p $(DESTDIR)$(ttfdir)
	cd $(DESTDIR)$(ttfdir); \
	$(mkfontscale); \
	mkfontdir -e /usr/X11R6/lib/X11/fonts/encodings
endif
if INCLUDE_TYPE1
	mkdir -p $(DESTDIR)$(type1dir)
	cd $(DESTDIR)$(type1dir); \
	$(type1inst); \
	mkfontdir
endif
	$(fccache)

uninstall-hook:
if INCLUDE_TTF
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
endif
if INCLUDE_TYPE1
	$(RM) $(DESTDIR)$(type1dir)/fonts.dir
	$(RM) $(DESTDIR)$(type1dir)/fonts.scale
	$(RM) $(DESTDIR)$(type1dir)/encodings.dir
	cd $(DESTDIR)$(type1dir); \
	$(type1inst); \
	if test `head -1 fonts.scale` -gt 0; then \
		mkfontdir; \
	else \
		$(RM) $(DESTDIR)$(type1dir)/fonts.scale; \
		$(RMDIR) $(DESTDIR)$(type1dir); \
	fi
endif
	$(fccache)

