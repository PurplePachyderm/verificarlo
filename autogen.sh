#!/bin/sh

# Deinit sigdigits submodule, if already present
git submodule deinit -f src/tools/sigdigits
rm -rf .git/modules/src/tools/sigdigits

# (Re)-init submodules
git submodule init
git submodule update

autoreconf -is
