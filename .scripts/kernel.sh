#!/bin/dash

# update sources
cd $HOME/.kernel/linux/
git pull

make -j4 --quiet
cp -f arch/x86_64/boot/bzImage /boot/vmlinuz
cp -f System.map /boot/System.map
