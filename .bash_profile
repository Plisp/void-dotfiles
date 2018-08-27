[[ -f ~/.bashrc ]] && . ~/.bashrc

export BROWSER="qutebrowser --loglevel=error"
export QT_QUICK_BACKEND=software
export PATH=$PATH:$HOME/.scripts

(cat ~/.cache/wal/sequences &)

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || exec startx
fi
