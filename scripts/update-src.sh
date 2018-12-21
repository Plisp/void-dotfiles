#!/bin/sh

## UPDATE SOURCES AND BUILD PROGRAMS IN /usr/src
## for my distro-hopping convenience
mkdir -p /usr/local/src
cd /usr/local/src

# emacs
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
cd ..

# universal-ctags (maintained ctags) - run after emacs
if [ ! -d ctags ]; then
	git clone https://github.com/universal-ctags/ctags.git
fi

cd ctags
git pull
./configure --enable-etags --quiet
rm /usr/local/bin/ctags /usr/local/bin/etags
make clean
make -j3 --quiet
make install -j8 --quiet
cd ..

# suckless terminal
if [ ! -d st/ ]; then
	git clone https://github.com/Plisp/st.git
fi

cd st
git pull
make clean install -j3 --quiet
cd ..

# dwm - coming soon

# ccls - c language server protocol
if [ ! -d ccls ]; then
	git clone https://github.com/Maskray/ccls.git --depth=1 --recursive
fi

cd ccls
git pull
cmake -H. -BRelease -DSYSTEM_CLANG=on -DUSE_SHARED_LLVM=on -DLLVM_ENABLE_RTTI=on
cmake --build Release
ln -s Release/ccls /usr/local/bin
cd ..

# dmenu - application launcher
if [ ! -d dmenu ]; then
	git clone https://git.suckless.org/dmenu
fi

cd dmenu
git pull
sudo make clean install
cd ..

# slock
if [ ! -d slock ]; then
	git clone https://git.suckless.org/slock
fi

cd slock
git pull
sudo make clean install
cd ..

# slstatus - ultra lightweight status bar
if [ ! -d slstatus ]; then
	git clone https://git.suckless.org/slstatus
fi

cd slstatus
git pull
sudo make clean install
cd ..
