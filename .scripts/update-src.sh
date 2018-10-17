#!/bin/bash

### UPDATE SOURCES AND BUILD PROGRAMS IN /usr/src

export CFLAGS='-march=native -O2 -ftree-vectorize -pipe'
export CXXFLAGS=${CFLAGS}
export CPPFLAGS=${CFLAGS}

rm -f /usr/local/bin/*

# ycmd

cd /usr/src/ycmd
git pull
./build.py --clang-completer --system-libclang --quiet

# universal-ctags

cd /usr/src/ctags
git pull
./configure --enable-etags --quiet
make clean
make -j3 --quiet
make install -j8 --quiet

# global

cd /usr/src/global
git pull
./configure --disable-gtagscscope --with-universal-ctags=/usr/local/bin/ctags --quiet
make clean
make -j3 --quiet
make install -j8 --quiet

# cleanup
unset {C,CXX,CPP}FLAGS
