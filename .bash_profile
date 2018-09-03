[[ -f ~/.bashrc ]] && . ~/.bashrc

export BROWSER="qutebrowser --loglevel=error"
export QT_QUICK_BACKEND=software
export PATH=$PATH:$HOME/.scripts

if [ -f ~/.cache/wal/sequences ]; then
		(cat ~/.cache/wal/sequences &)
fi

#if [[ "$(tty)" = "/dev/tty1" ]]; then
#	pgrep i3 || exec startx
#fi
