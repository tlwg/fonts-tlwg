#!/bin/sh

export top_builddir=${top_builddir-../}
export top_srcdir=${top_srcdir-../}
exec ${top_srcdir}/tests/gen-pdfsample.sh .pfb PS

