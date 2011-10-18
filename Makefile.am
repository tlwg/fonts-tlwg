MAINTAINERCLEANFILES = Makefile.in configure aclocal.m4

EXTRA_DIST = ChangeLog.thai-ttf GPL

SUBDIRS = scripts nf nectec tlwg fontconfig latex tests

if INCLUDE_XFONTSDIR
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
	  $(TTMKFDIR);                                                 \
	  $(MKFONTDIR)
	$(FCCACHE) -f $(DESTDIR)$(ttfdir)
endif
if INCLUDE_TYPE1
	mkdir -p $(DESTDIR)$(type1dir)
	cd $(DESTDIR)$(type1dir);                                      \
	  $(TYPE1INST);                                                \
	  $(MKFONTDIR)
	$(FCCACHE) -f $(DESTDIR)$(type1dir)
endif

uninstall-hook:
if INCLUDE_TTF
	$(RM) $(DESTDIR)$(ttfdir)/fonts.cache-1
	$(RM) $(DESTDIR)$(ttfdir)/fonts.dir
	$(RM) $(DESTDIR)$(ttfdir)/fonts.scale
	$(RM) $(DESTDIR)$(ttfdir)/encodings.dir
	cd $(DESTDIR)$(ttfdir); \
	$(TTMKFDIR); \
	if test `head -1 fonts.scale` -gt 0; then \
		$(MKFONTDIR); \
		$(FCCACHE) -f $(DESTDIR)$(ttfdir); \
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
	$(TYPE1INST); \
	if test `head -1 fonts.scale` -gt 0; then \
		$(MKFONTDIR); \
		$(FCCACHE) -f $(DESTDIR)$(type1dir); \
	else \
		$(RM) $(DESTDIR)$(type1dir)/fonts.scale; \
		$(RMDIR) $(DESTDIR)$(type1dir); \
	fi
endif
endif # INCLUDE_XFONTSDIR

