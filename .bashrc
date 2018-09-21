export PS1="\[$(tput bold)\]\[$(tput setaf 2)\][\[$(tput setaf 6)\]\u\[$(tput setaf 4)\]@\[$(tput setaf 1)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 2)\]]\[$(tput setaf 6)\]\\$ \[$(tput sgr0)\]"

# auto cd into dirs
complete -d cd
shopt -s autocd

# complete prefixed commands
complete -cf sudo
complete -cf man

# Aliases
alias l='ls --color=auto -Alh'
alias l.='ls * -A'
alias sd='sudo shutdown -h now'

alias ec='emacsclient -ca ""'
alias sec='sudo -E emacsclient -ca ""'
alias et='TERM=xterm emacsclient -ta ""'
alias set='TERM=xterm sudo -E emacsclient -ta ""'
alias ee='emacsclient -e "(kill-server)"'

alias supdate='sudo xbps-install -Su && xbps-reconfigure -fa'
alias xin='sudo xbps-install'
alias xq='xbps-query'
alias xrm='sudo xbps-remove -Rvf'
alias xrc='sudo xbps-reconfigure'

alias r='ranger'
alias sr='sudo ranger'
alias z='zathura'

export EDITOR='emacsclient -t -a ""'
export VISUAL='emacsclient -c -a ""'
export BROWSER='qutebrowser'
