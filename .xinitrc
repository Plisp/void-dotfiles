#!/bin/sh

xmodmap ~/.Xmodmap
xset r rate 200 50

redshift -l 33.8:151.2 &
feh --bg-fill ~/bg.png
slstatus &
compton -CGb --xrender-sync-fence
mpd &
nm-applet &

#exec i3
exec dwm
