#!/bin/sh

set -x
aclocal
automake --add-missing
# Use -f so git-version-gen does refresh
autoconf -f

