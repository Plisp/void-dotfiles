#!/bin/sh

xmodmap ~/.Xmodmap
xset r rate 200 50

emacs --daemon
redshift -l 33.8:151.2 &
picom -b
setroot -s ~/bg.jpg
slstatus &
mpd &
dunst &

#🚀�帅ཧྐྵྨླྺྼྻྂ⸻
#/home/plisp/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src
#exec i3
exec dwm
