MAINTAINERCLEANFILES = Makefile.in configure aclocal.m4

EXTRA_DIST = ChangeLog.thai-ttf GPL

SUBDIRS = scripts latex nf nectec sipa tlwg fontconfig tests

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
if INCLUDE_PFB
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
if INCLUDE_PFB
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

if INCLUDE_LATEX
tdsdist_tgz = $(LATEX_PACKAGE)-$(VERSION).tds.tar.gz
ctandist_tgz = $(LATEX_PACKAGE)-$(VERSION).ctan.tar.gz

tdsdist_zip = $(LATEX_PACKAGE)-$(VERSION).tds.zip
ctandist_zip = $(LATEX_PACKAGE)-$(VERSION).ctan.zip

tdsdistdir = $(LATEX_PACKAGE)-$(VERSION)-tds

inst-tds:
	rm -rf $(tdsdistdir)
	mkdir $(tdsdistdir)
	confdir=`cd $(top_srcdir) && pwd` \
	  && cd $(tdsdistdir) \
	  && $$confdir/configure --disable-ttf --enable-latex --prefix=/usr \
	       --with-texmfdir=/ --docdir=/doc/fonts/$(LATEX_PACKAGE) \
	  && $(MAKE) $(AM_MAKEFLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) DESTDIR=`pwd`/inst install \
	  && rm -rf inst/usr \
	  && mkdir -p inst/source/fonts/$(LATEX_PACKAGE) \
	  && make distdir distdir=inst/source/fonts/$(LATEX_PACKAGE)

dist-tds-tgz: inst-tds
	rm -f $(tdsdist_tgz)
	cd $(tdsdistdir)/inst \
	  && tar cf - * | gzip -9 -c > ../../$(tdsdist_tgz)
	rm -rf $(tdsdistdir)

dist-tds-zip: inst-tds
	rm -f $(tdsdist_zip)
	cd $(tdsdistdir)/inst \
	  && zip -r ../../$(tdsdist_zip) *
	rm -rf $(tdsdistdir)

dist-tds: dist-tds-zip

dist-ctan-tgz: dist-tds-tgz distdir
	rm -f $(ctandist_tgz)
	tar cf - $(tdsdist_tgz) $(distdir) | gzip -9 -c > $(ctandist_tgz)
	$(am__remove_distdir)

dist-ctan-zip: dist-tds-zip distdir
	rm -f $(ctandist_zip)
	zip -r $(ctandist_zip) $(tdsdist_zip) $(distdir)
	$(am__remove_distdir)

dist-ctan: dist-ctan-zip

.PHONY: dist-ctan dist-ctan-tgz dist-ctan-zip dist-tds dist-tds-tgz dist-tds-zip inst-tds
endif # INCLUDE_LATEX

