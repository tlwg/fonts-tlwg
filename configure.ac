AC_PREREQ([2.71])
AC_INIT([fonts-tlwg],
        [m4_esyscmd(build-aux/git-version-gen)],
        [https://github.com/tlwg/fonts-tlwg/issues])
AC_CONFIG_SRCDIR([nf/Garuda.sfd])

AM_INIT_AUTOMAKE(dist-xz no-dist-gzip -Wno-portability)

FONTFORGE_MIN_VER=20190801

LATEX_PACKAGE="fonts-tlwg"
AC_SUBST(LATEX_PACKAGE)

dnl
dnl Check options
dnl
AC_ARG_ENABLE(ttf,
              [AS_HELP_STRING([--enable-ttf],
                              [enable TTF generation])],
              , enable_ttf="no")
if test "x$enable_ttf" = "xyes"; then
  dnl TTF generation requires "fontforge" python module
  AM_PATH_PYTHON([3.7])
  AX_PYTHON_MODULE([fontforge],[fatal])

  dnl Check TTF installation dir
  AC_ARG_WITH(ttfdir,
    [AS_HELP_STRING([--with-ttfdir=DIR],
                    [font directory in DIR [PREFIX/share/fonts/truetype/thai]])],
    [ttfdir="$withval"], [ttfdir=\$\{prefix\}/share/fonts/truetype/thai])
  AC_MSG_CHECKING(--with-ttfdir)
  AC_MSG_RESULT("$ttfdir")

  AC_SUBST(ttfdir)
fi

AC_ARG_ENABLE(pfb,
              [AS_HELP_STRING([--enable-pfb],
                              [enable Type1 PFB generation])],
              , enable_pfb="no")
if test "x$enable_pfb" = "xyes"; then
  AC_ARG_WITH(type1dir,
    [AS_HELP_STRING([--with-type1dir=DIR],
                    [font directory in DIR [PREFIX/share/fonts/type1/thai]])],
    [type1dir="$withval"], [type1dir=\$\{prefix\}/share/fonts/type1/thai])
  AC_MSG_CHECKING(--with-type1dir)
  AC_MSG_RESULT("$type1dir")

  AC_SUBST(type1dir)
fi

AC_ARG_ENABLE(otf,
              [AS_HELP_STRING([--disable-otf],
                              [disable OTF generation])],
              , enable_otf="yes")
if test "x$enable_otf" = "xyes"; then
  AC_ARG_WITH(otfdir,
    [AS_HELP_STRING([--with-otfdir=DIR],
                    [font directory in DIR [PREFIX/share/fonts/opentype/thai]])],
    [otfdir="$withval"], [otfdir=\$\{prefix\}/share/fonts/opentype/thai])
  AC_MSG_CHECKING(--with-otfdir)
  AC_MSG_RESULT("$otfdir")

  AC_SUBST(otfdir)
fi

AC_ARG_ENABLE(woff,
              [AS_HELP_STRING([--enable-woff],
                              [enable Web Open Font Format generation])],
              , enable_woff="no")
if test "x$enable_woff" = "xyes"; then
  AC_ARG_WITH(woffdir,
    [AS_HELP_STRING([--with-woffdir=DIR],
                    [font directory in DIR [PREFIX/share/fonts/woff/thai]])],
    [woffdir="$withval"], [woffdir=\$\{prefix\}/share/fonts/woff/thai])
  AC_MSG_CHECKING(--with-woffdir)
  AC_MSG_RESULT("$woffdir")

  AC_SUBST(woffdir)
fi

AC_ARG_ENABLE(testfont,
              [AS_HELP_STRING([--enable-testfont],
                              [enable font generation with prefix {TTF,OTF,PS}])],
              , enable_testfont="no")
if test "x$enable_testfont" = "xyes"; then
  dnl Test TTF generation requires "fontforge" python module
  AM_PATH_PYTHON([3.7])
  AX_PYTHON_MODULE([fontforge],[fatal])

  AC_ARG_WITH(testfontdir,
    [AS_HELP_STRING([--with-testfontdir=DIR],
                    [font directory in DIR [$HOME/.fonts/testfont]])],
    [testfontdir="$withval"], [testfontdir=\$\{HOME\}/.fonts/testfont])
  AC_MSG_CHECKING(--with-testfontdir)
  AC_MSG_RESULT("$testfontdir")

  AC_SUBST(testfontdir)
fi


AC_ARG_ENABLE(xfontsdir,
              [AS_HELP_STRING([--enable-xfontsdir],
                              [enable X font index generation])],
              , enable_xfontsdir="no")

AC_ARG_ENABLE(latex,
              [AS_HELP_STRING([--enable-latex],
                              [enable LaTeX fonts generation])],
              , enable_latex="no")

AM_CONDITIONAL(INCLUDE_TTF,test $enable_ttf = "yes")
AM_CONDITIONAL(INCLUDE_PFB,test $enable_pfb = "yes")
AM_CONDITIONAL(INCLUDE_OTF,test $enable_otf = "yes")
AM_CONDITIONAL(INCLUDE_WOFF,test $enable_woff = "yes")
AM_CONDITIONAL(INCLUDE_TESTFONT,test $enable_testfont = "yes")

AM_CONDITIONAL(INCLUDE_XFONTSDIR,test $enable_xfontsdir = "yes")

AM_CONDITIONAL(INCLUDE_LATEX,test $enable_latex = "yes")

dnl
dnl Check Programs
dnl
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_SED
AC_CHECK_PROGS(RMDIR,rmdir,no)

AC_CHECK_PROGS(FONTFORGE,fontforge,no)

if test "x$FONTFORGE" = "xno"; then
  AC_MSG_ERROR([You need fontforge to generate fonts.])
else
  AC_MSG_CHECKING([for Fontforge >= $FONTFORGE_MIN_VER])
  FONTFORGE_VER=$($FONTFORGE --version 2>/dev/null | grep '^fontforge' | sed 's/fontforge //')
  FONTFORGE_VER=$(TZ=UTC date -d "$FONTFORGE_VER" "+%Y%m%d")
  if test $FONTFORGE_VER -lt $FONTFORGE_MIN_VER; then
    AC_MSG_ERROR([Requires Fontforge >= $FONTFORGE_MIN_VER but $FONTFORGE_VER was found)])
  fi
  AC_MSG_RESULT([$FONTFORGE_VER found, ok])
fi

if test "x$enable_xfontsdir" = "xno"; then
  AC_MSG_NOTICE([X fonts dir not enabled, skipping checks for X fonts utils])
else
  dnl
  dnl Begin checking X fonts utils
  dnl

  dnl prefer mkfontscale over ttmkfdir
  AC_CHECK_PROG(MKFONTSCALE,mkfontscale,mkfontscale)

  # xorg or xfree86?
  if test "x$MKFONTSCALE" = "xmkfontscale"; then
    if $MKFONTSCALE -n >/dev/null 2>&1; then
      # xorg's mkfontscale
      MKFONTSCALE="mkfontscale -a tis620-0 -a tis620-2"
      rm -f fonts.scale encodings.dir
    else
      # xfree86's mkfontscale
      MKFONTSCALE="mkfontscale -e tis620-0 -e tis620-2"
    fi
  fi

  if test "x$enable_ttf" = "xyes"; then
    if test "x$MKFONTSCALE" = "x"; then
      AC_CHECK_PROG(TTMKFDIR,ttmkfdir,ttmkfdir)
      if test "x$TTMKFDIR" = "x"; then
        AC_MSG_ERROR([You need mkfontscale or ttmkfdir])
      else
        if (ttmkfdir -h 2>&1 | grep -- --encoding >/dev/null); then
          # ttmkfdir 2
          TTMKFDIR="ttmkfdir -e /usr/X11R6/lib/X11/fonts/encodings/encodings.dir -o fonts.scale"
        else
          # ttmkfdir 1
          TTMKFDIR="ttmkfdir > fonts.scale"
        fi
      fi
    else
      TTMKFDIR="$MKFONTSCALE"
    fi
    AC_MSG_RESULT([Will create fonts.scale for TTF using $TTMKFDIR])
  fi

  if test "x$enable_pfb" = "xyes"; then
    if test "x$MKFONTSCALE" = "x"; then
      AC_CHECK_PROG(TYPE1INST,type1inst,type1inst)
      if test "x$TYPE1INST" = "x"; then
        AC_MSG_ERROR([You need mkfontscale or type1inst])
      fi
    else
      TYPE1INST="$MKFONTSCALE"
    fi
    AC_MSG_RESULT([Will create fonts.scale for Type1 using $TYPE1INST])
  fi

  dnl Check for mkfontdir and encoding path
  AC_CHECK_PROG(MKFONTDIR,mkfontdir,mkfontdir)
  ENCPATH="/usr/share/fonts/X11/encodings \
           /usr/X11R6/lib/X11/fonts/encodings"
  ENCDIR=
  for dir in $ENCPATH; do
    if test -d $dir; then
      ENCDIR=$dir
      break
    fi
  done
  if test "x$MKFONTDIR" = "xmkfontdir" && test "x$ENCDIR" != "x"; then
    MKFONTDIR="$MKFONTDIR -e $ENCDIR"
  fi
  AC_MSG_RESULT([Will create fonts.dir using $MKFONTDIR])

  AC_CHECK_PROG(FCCACHE,fc-cache,[fc-cache])

  dnl
  dnl End checking X fonts utils
  dnl
fi

if test "x$enable_latex" = "xyes"; then
  AC_CHECK_PROGS(AFM2TFM,afm2tfm,no)
  if test "x$AFM2TFM" = "xno" ; then
    AC_MSG_ERROR([You need afm2tfm (from texlive distribution)])
  fi
  AC_CHECK_PROGS(VPTOVF,vptovf,no)
  if test "x$VPTOVF" = "xno" ; then
    AC_MSG_ERROR([You need vptovf (from texlive distribution)])
  fi

  AC_ARG_WITH(texmfdir,
    [AS_HELP_STRING([--with-texmfdir=DIR],
                    [texmf directory in DIR [PREFIX/share/texmf]])],
    [texmfdir="$withval"], [texmfdir=${datarootdir}/texmf])
  AC_MSG_CHECKING(--with-texmfdir)
  AC_MSG_RESULT("$texmfdir")                                                                                                           
  AC_SUBST(texmfdir)

  AC_PATH_PROGS(UPDMAP,[updmap-sys updmap],no)
  if test "x$UPDMAP" = "xno" ; then
    AC_MSG_ERROR([You need updmap-sys or updmap (from texlive distribution)])
  fi

  AC_PATH_PROG(TEXHASH,[mktexlsr texhash],no)
  if test "x$TEXHASH" = "xno" ; then
    AC_MSG_ERROR([You need mktexlsr or texhash (from texlive distribution)])
  fi
fi


AC_CONFIG_FILES([Makefile
  nf/Makefile
  nectec/Makefile
  sipa/Makefile
  tlwg/Makefile
  scripts/Makefile
  fontconfig/Makefile
  latex/Makefile
  latex/examples/Makefile
  tests/Makefile
])
AC_OUTPUT

