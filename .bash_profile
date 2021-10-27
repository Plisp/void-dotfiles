# Environment variables
export PATH=$HOME/scripts:$HOME/.roswell/bin:$HOME/.cargo/bin:$PATH
export RUST_SRC_PATH=$HOME/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/

export EDITOR='nvim'
export VISUAL='emacs'

export ENV='$HOME/.shinit'

#cleanup
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export LESSHISTFILE="-"
export INPUTRC="$HOME/.config/inputrc"

# find alternative: https://github.com/sharkdp/fd

export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_ALT_C_COMMAND="fd --type d"

export XAUTHORITY=$HOME/.Xauthority

# Automatically start X
if [ "$(tty)" = "/dev/tty1" ]; then
	pgrep dwm || exec startx
fi

export PATH="$HOME/.cargo/bin:$PATH"
