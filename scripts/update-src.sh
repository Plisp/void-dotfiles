#!/bin/sh

## UPDATE SOURCES AND BUILD PROGRAMS IN /usr/src
## for my distro-hopping convenience
mkdir -p /usr/local/src
rm -f /usr/local/bin/*

# global (tagging)
cd /usr/local/src
if [ ! -d /usr/local/src/global ]; then
	git clone https://github.com/harai/gnu-global.git
fi

cd global
git pull
./configure --disable-gtagscscope --with-universal-ctags=/usr/local/bin/ctags --quiet
make clean
make -j3 --quiet
make install -j8 --quiet

# emacs
cd /usr/local/src
if [ ! -d emacs ]; then
	git clone https://git.savannah.gnu.org/git/emacs.git
fi

cd emacs
git pull
./configure --quiet --without-toolkit-scroll-bars --without-dbus --without-gsettings --without-libsystemd \
            --with-sound=alsa --with-mailutils --with-x-toolkit=athena --with-x
make clean
make -j3 --quiet
make install -j8 --quiet

# universal-ctags (maintained ctags)
# don't want emacs-etags or its manual
rm /usr/local/bin/ctags /usr/local/bin/etags
rm /usr/local/share/man/man1/ctags.1.gz /usr/local/share/man/man1/etags.1.gz

cd /usr/local/src
if [ ! -d ctags ]; then
	git clone https://github.com/universal-ctags/ctags.git
fi

cd ctags
git pull
./configure --enable-etags --quiet
make clean
make -j3 --quiet
make install -j8 --quiet

# suckless terminal
cd /usr/local/src
if [ ! -d st ]; then
	git clone https://github.com/Plisp/st.git
fi

cd st
git pull
make clean install -j3 --quiet

# ccls - c language server protocol
cd /usr/local/src
if [ ! -d ccls ]; then
	git clone https://github.com/Maskray/ccls.git
fi

cd ccls
git pull
cmake -H. -BRelease -DSYSTEM_CLANG=on -DUSE_SHARED_LLVM=on -DLLVM_ENABLE_RTTI=on
cmake --build Release
