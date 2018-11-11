# Environment variables
export PATH=$HOME/scripts:$PATH

export EDITOR='nvim'
export VISUAL='emacsclient -ca""'

export FZF_DEFAULT_COMMAND='find . -type f ! -path '*/\.git/*' 2>/dev/null'
export FZF_CTRL_T_COMMAND='$FZF_DEFAULT_COMMAND'
export FZF_ALT_C_COMMAND='find / -type d ! -path '*/\.git/*' 2>/dev/null'

export GTAGSCONF=$HOME/.globalrc
export GTAGSLIBPATH=$HOME/.gtags

# Load personal settings
[ -f ~/.personal ] && . ~/.personal

# Automatically start i3
if [ "$(tty)" = "/dev/tty1" ]; then
	pgrep i3 || exec startx
fi
