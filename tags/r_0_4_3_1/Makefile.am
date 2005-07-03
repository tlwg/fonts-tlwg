MAINTAINERCLEANFILES = Makefile.in configure aclocal.m4

EXTRA_DIST = ChangeLog.thai-ttf

SUBDIRS = scripts nf nectec tlwg tests

ttmkfdir = @TTMKFDIR@
type1inst = @TYPE1INST@
fccache = @FCCACHE@

install-data-hook:
	@if test -n "$(DESTDIR)" ; then                                \
	  echo "***" ;                                                 \
	  echo "*** Warning: Seems to be binary package building." ;   \
	  echo "***          So, font list/cache is not generated" ;   \
	  echo "***" ;                                                 \
	  exit 0;                                                      \
	fi
if INCLUDE_TTF
	mkdir -p $(DESTDIR)$(ttfdir)
	cd $(DESTDIR)$(ttfdir);                                        \
	  $(ttmkfdir);                                                 \
	  mkfontdir -e /usr/X11R6/lib/X11/fonts/encodings
	$(fccache) -f $(DESTDIR)$(ttfdir)
endif
if INCLUDE_TYPE1
	mkdir -p $(DESTDIR)$(type1dir)
	cd $(DESTDIR)$(type1dir);                                      \
	  $(type1inst);                                                \
	  mkfontdir -e /usr/X11R6/lib/X11/fonts/encodings
	$(fccache) -f $(DESTDIR)$(type1dir)
endif
#	@if test -z "$(DESTDIR)" ; then                                       \
#if INCLUDE_TTF
#	  mkdir -p $(DESTDIR)$(ttfdir);                                       \
#	  cd $(DESTDIR)$(ttfdir);                                             \
#	  $(ttmkfdir);                                                        \
#	  mkfontdir -e /usr/X11R6/lib/X11/fonts/encodings;                    \
#endif
#if INCLUDE_TYPE1
#	  mkdir -p $(DESTDIR)$(type1dir);                                     \
#	  cd $(DESTDIR)$(type1dir);                                           \
#	  $(type1inst);                                                       \
#	  mkfontdir -e /usr/X11R6/lib/X11/fonts/encodings;                    \
#endif
#	  $(fccache);                                                         \
#	@else                                                                 \
#	  echo "***" ;                                                        \
#	  echo "*** Warning: Seems to be binary package building." ;          \
#	  echo "***          So, font list/cache is not generated" ;          \
#	  echo "***" ;                                                        \
#	@fi

uninstall-hook:
if INCLUDE_TTF
	$(RM) $(DESTDIR)$(ttfdir)/fonts.cache-1
	$(RM) $(DESTDIR)$(ttfdir)/fonts.dir
	$(RM) $(DESTDIR)$(ttfdir)/fonts.scale
	$(RM) $(DESTDIR)$(ttfdir)/encodings.dir
	cd $(DESTDIR)$(ttfdir); \
	$(ttmkfdir); \
	if test `head -1 fonts.scale` -gt 0; then \
		mkfontdir -e /usr/X11R6/lib/X11/fonts/encodings; \
		$(fccache) -f $(DESTDIR)$(ttfdir); \
	else \
		$(RM) $(DESTDIR)$(ttfdir)/fonts.scale; \
		$(RMDIR) $(DESTDIR)$(ttfdir); \
	fi
endif
if INCLUDE_TYPE1
	$(RM) $(DESTDIR)$(type1dir)/fonts.cache-1
	$(RM) $(DESTDIR)$(type1dir)/fonts.dir
	$(RM) $(DESTDIR)$(type1dir)/fonts.scale
	$(RM) $(DESTDIR)$(type1dir)/encodings.dir
	cd $(DESTDIR)$(type1dir); \
	$(type1inst); \
	if test `head -1 fonts.scale` -gt 0; then \
		mkfontdir -e /usr/X11R6/lib/X11/fonts/encodings; \
		$(fccache) -f $(DESTDIR)$(type1dir); \
	else \
		$(RM) $(DESTDIR)$(type1dir)/fonts.scale; \
		$(RMDIR) $(DESTDIR)$(type1dir); \
	fi
endif

