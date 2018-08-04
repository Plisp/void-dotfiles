[[ -f ~/.bashrc ]] && . ~/.bashrc

export BROWSER="qutebrowser --loglevel=error"
export QT_QUICK_BACKEND=software
export PATH=$PATH:/opt/texlive/*/bin/x86_64-linux:$HOME/.scripts

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || exec startx
fi
