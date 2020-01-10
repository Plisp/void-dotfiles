#!/bin/sh

xmodmap ~/.Xmodmap
xset r rate 200 50

#redshift -l 33.8:151.2 &
setroot ~/bg.jpg
slstatus &
#compton -CGb --xrender-sync-fence
mpd &
dunst &

#exec i3
exec dwm
