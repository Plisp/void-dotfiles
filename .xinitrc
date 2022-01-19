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

#ỳ🚀�帅ཧྐྵྨླྺྼྻྂ⸻
#exec i3
exec dwm
