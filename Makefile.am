MAINTAINERCLEANFILES = Makefile.in configure aclocal.m4

EXTRA_DIST =	\
	ChangeLog.thai-ttf		\
	GPL				\
	build-aux/git-version-gen	\
	$(NULL)

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

dist-hook:
	echo $(VERSION) > $(distdir)/VERSION

if INCLUDE_LATEX
tdsdist_tgz = $(LATEX_PACKAGE)-$(VERSION).tds.tar.gz
tdsdist_nv_tgz = $(LATEX_PACKAGE).tds.tar.gz
ctandist_tgz = $(LATEX_PACKAGE)-$(VERSION).ctan.tar.gz

tdsdist_zip = $(LATEX_PACKAGE)-$(VERSION).tds.zip
tdsdist_nv_zip = $(LATEX_PACKAGE).tds.zip
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
	rm -f $(ctandist_tgz) $(tdsdist_nv_tgz)
	cp $(tdsdist_tgz) $(tdsdist_nv_tgz)
	tar cf - $(tdsdist_nv_tgz) $(distdir) | gzip -9 -c > $(ctandist_tgz)
	rm $(tdsdist_nv_tgz)
	$(am__remove_distdir)

dist-ctan-zip: dist-tds-zip distdir
	rm -f $(ctandist_zip) $(tdsdist_nv_zip)
	cp $(tdsdist_zip) $(tdsdist_nv_zip)
	zip -r $(ctandist_zip) $(tdsdist_nv_zip) $(distdir)
	rm $(tdsdist_nv_zip)
	$(am__remove_distdir)

dist-ctan: dist-ctan-zip

endif # INCLUDE_LATEX

.PHONY: dist-tds dist-tds-tgz dist-tds-zip inst-tds
.PHONY: dist-ctan dist-ctan-tgz dist-ctan-zip

#
# Font Binary Tarballs
#

otf_package = otf-tlwg
ttf_package = ttf-tlwg
woff_package = woff-tlwg

otfdist_txz = $(otf_package)-$(VERSION).tar.xz
ttfdist_txz = $(ttf_package)-$(VERSION).tar.xz
woffdist_txz = $(woff_package)-$(VERSION).tar.xz

otfdist_zip = $(otf_package)-$(VERSION).zip
ttfdist_zip = $(ttf_package)-$(VERSION).zip
woffdist_zip = $(woff_package)-$(VERSION).zip

otfdistdir = $(otf_package)-$(VERSION)
ttfdistdir = $(ttf_package)-$(VERSION)
woffdistdir = $(woff_package)-$(VERSION)

fcdistdir = fontconfig-$(VERSION)

workingdir = work

inst-fonts.stamp:
	rm -rf $(otfdistdir) $(ttfdistdir) $(woffdistdir)
	rm -rf $(fcdistdir)
	rm -rf $(workingdir)
	mkdir $(workingdir)
	confdir=`cd $(top_srcdir) && pwd` \
	  abs_otfdistdir=`pwd`/$(otfdistdir) \
	  abs_ttfdistdir=`pwd`/$(ttfdistdir) \
	  abs_woffdistdir=`pwd`/$(woffdistdir) \
	  abs_fcdistdir=`pwd`/$(fcdistdir) \
	  && cd $(workingdir) \
	  && $$confdir/configure \
	       --enable-otf --with-otfdir=$$abs_otfdistdir \
	       --enable-ttf --with-ttfdir=$$abs_ttfdistdir \
	       --enable-woff --with-woffdir=$$abs_woffdistdir \
	       --datadir=$$abs_fcdistdir \
	  && $(MAKE) $(AM_MAKEFLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) install
	cp -a $(fcdistdir)/* $(otfdistdir)
	cp -a $(fcdistdir)/* $(ttfdistdir)
	rm -rf $(fcdistdir)
	rm -rf $(workingdir)
	touch $@

dist-otf-txz: inst-fonts.stamp
	rm -f $(otfdist_txz)
	tar cJf $(otfdist_txz) $(otfdistdir)
	md5sum $(otfdist_txz) > $(otfdist_txz).md5sum

dist-otf-zip: inst-fonts.stamp
	rm -f $(otfdist_zip)
	zip -r $(otfdist_zip) $(otfdistdir)
	md5sum $(otfdist_zip) > $(otfdist_zip).md5sum

dist-ttf-txz: inst-fonts.stamp
	rm -f $(ttfdist_txz)
	tar cJf $(ttfdist_txz) $(ttfdistdir)
	md5sum $(ttfdist_txz) > $(ttfdist_txz).md5sum

dist-ttf-zip: inst-fonts.stamp
	rm -f $(ttfdist_zip)
	zip -r $(ttfdist_zip) $(ttfdistdir)
	md5sum $(ttfdist_zip) > $(ttfdist_zip).md5sum

dist-woff-txz: inst-fonts.stamp
	rm -f $(woffdist_txz)
	tar cJf $(woffdist_txz) $(woffdistdir)
	md5sum $(woffdist_txz) > $(woffdist_txz).md5sum

dist-woff-zip: inst-fonts.stamp
	rm -f $(woffdist_zip)
	zip -r $(woffdist_zip) $(woffdistdir)
	md5sum $(woffdist_zip) > $(woffdist_zip).md5sum

dist-fonts-clean:
	rm -rf $(otfdistdir) $(ttfdistdir) $(woffdistdir)
	rm -f inst-fonts.stamp

dist-fonts-txz: dist-otf-txz dist-ttf-txz dist-woff-txz

dist-fonts-zip: dist-otf-zip dist-ttf-zip dist-woff-zip

dist-fonts: dist-fonts-txz dist-fonts-zip dist-fonts-clean

.PHONY: dist-fonts-txz dist-otf-txz dist-ttf-txz dist-woff-txz
.PHONY: dist-fonts-zip dist-otf-zip dist-ttf-zip dist-woff-zip
.PHONY: dist-fonts dist-fonts-clean

