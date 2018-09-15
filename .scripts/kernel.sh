#!/bin/sh

#SOURCE='https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git'

# update sources 
cd /home/plisp/.kernel/linux/
git pull
make -j3 --quiet
cp -fv .config ../

mount /boot
mv /boot/vmlinuz-current /boot/vmlinuz-bak
mv /boot/System.map-current /boot/System.map-bak
cp -v arch/x86_64/boot/bzImage /boot/vmlinuz-current
cp -v System.map /boot/System.map-current

# remember to chown /boot/grub to run as regular user
grub-mkconfig -o /boot/grub/grub.cfg
