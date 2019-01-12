# Environment variables
export PATH=$HOME/scripts:$PATH

export EDITOR='xvi'
export VISUAL='emacs'

export FZF_DEFAULT_COMMAND="find . -type f ! -path '*/\.git/*'"
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_ALT_C_COMMAND="find / -type d ! -path '*/\.git/*' 2>/dev/null"

export GTAGSCONF=$HOME/.globalrc
export GTAGSLIBPATH=$HOME/.gtags

# Automatically start X
if [ "$(tty)" = "/dev/tty1" ]; then
	pgrep i3 || exec startx
fi
