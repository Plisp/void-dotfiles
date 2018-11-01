[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.personal ]] && . ~/.personal

export PATH=$HOME/.scripts:$PATH
export GTAGSCONF=$HOME/.globalrc
export GTAGSLIBPATH=$HOME/.gtags
export FZF_DEFAULT_COMMAND='find . -type f -not -path '*/\.git/*''

if [ -f ~/.cache/wal/sequences ]; then
	(cat ~/.cache/wal/sequences &)
fi

# Fuzzy file finder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || exec startx
fi
