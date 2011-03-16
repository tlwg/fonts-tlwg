#!/bin/sh

set -x
aclocal
automake --add-missing
autoconf

