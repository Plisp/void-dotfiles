[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.personal ]] && . ~/.personal

export PATH=$HOME/.scripts:$PATH

if [ -f ~/.cache/wal/sequences ]; then
	(cat ~/.cache/wal/sequences &)
fi

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || exec startx
fi
