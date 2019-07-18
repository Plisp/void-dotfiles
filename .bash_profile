# Environment variables
export PATH=$HOME/scripts:$HOME/.roswell/bin:$HOME/.cargo/bin:$PATH

export EDITOR='nvim'
export VISUAL='emacs'

export ENV='$HOME/.shinit'

# find alternative: https://github.com/sharkdp/fd

export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_ALT_C_COMMAND="fd . '/' --type d"

export GTAGSCONF=$HOME/.globalrc
export GTAGSLIBPATH=$HOME/.gtags

# Automatically start X
if [ "$(tty)" = "/dev/tty1" ]; then
	pgrep i3 || exec startx
fi

xinput --set-prop 11 312 0
