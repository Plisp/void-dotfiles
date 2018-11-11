export PS1="\[$(tput bold)\]\[$(tput setaf 2)\][\[$(tput setaf 6)\]\u\[$(tput setaf 4)\]@\[$(tput setaf 1)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 2)\]]\[$(tput setaf 6)\]\\$ \[$(tput sgr0)\]"

# auto cd into dirs
complete -d cd
shopt -s autocd
shopt -s globstar

# complete prefixed commands
complete -cf sudo
complete -cf man

# Aliases
alias l='ls -Alh --color=always'
alias l.='ls * -A --color=always'
alias sd='sudo shutdown -h now'

alias ec='emacsclient -ca ""'
alias sec='sudo -E emacsclient -ca ""'
alias et='emacsclient -ta ""'
alias set='sudo -E emacsclient -ta ""'
alias ee='emacsclient -e "(kill-emacs)"'

alias v='nvim'
alias vf='nvim $(fzf)'
alias sv='sudo -E nvim'

alias xq='xbps-query'
alias xrm='sudo xbps-remove -Rvf'
alias xrc='sudo xbps-reconfigure -vf'

alias r='ranger'
alias sr='sudo ranger'
alias z='zathura'

xrdb -merge ~/.Xdefaults

# fuzzy completion
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
