#!/bin/bash

### UPDATE SOURCES AND BUILD PROGRAMS IN /usr/src

export CFLAGS='-march=native -O2 -ftree-vectorize -pipe'
export CXXFLAGS=${CFLAGS}
export CPPFLAGS=${CFLAGS}

rm -f /usr/local/bin/*
rm -f /usr/local/var/*

# ycmd

cd /usr/src/ycmd
git pull
./build.py --clang-completer --system-libclang --quiet

# global

cd /usr/src/global
git pull
./configure --disable-gtagscscope --with-universal-ctags=/usr/local/bin/ctags --quiet
make clean
make -j3 --quiet
make install -j8 --quiet

# emacs
cd /usr/src/emacs
git pull
./configure --quiet --without-toolkit-scroll-bars --without-dbus --without-gsettings --without-libsystemd \
            --with-sound=alsa --with-mailutils --with-x-toolkit=athena --with-x
make -j3 --quiet
make install -j8 --quiet

# universal-ctags

rm /usr/local/bin/ctags /usr/local/bin/etags
cd /usr/src/ctags
git pull
./configure --enable-etags --quiet
make clean
make -j3 --quiet
make install -j8 --quiet

# cleanup
unset {C,CXX,CPP}FLAGS
