#!/bin/sh

xmodmap ~/.Xmodmap
xset r rate 200 50

#emacs --daemon
redshift -l 33.8:151.2 &
#picom -b
setroot -s ~/bg.jpg
slstatus &
mpd &
#dunst &
#socklog &

#ỳ🚀�帅ཧྐྵྨླྺྼྻྂ⸻
# sudo powertop --auto-tune
# sudo rfkill block bluetooth
# sudo date
exec dwm
