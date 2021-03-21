# Load personal settings
[ -f $HOME/.personal ] && source $HOME/.personal

#dash -E
picom-trans -c 90

#export PS1="\[$(tput bold)\]\[$(tput setaf 2)\][\[$(tput setaf 6)\]\u\[$(tput setaf 4)\]@\[$(tput setaf 1)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 2)\]]\[$(tput setaf 6)\]\\$\[$(tput sgr0)\] "
export PS1="\[$(tput bold)\]\[$(tput setaf 6)\]\u\[$(tput setaf 4)\]@\[$(tput setaf 1)\]\h \[$(tput setaf 5)\]\w\[$(tput setaf 6)\]\\$\[$(tput sgr0)\] "

# auto cd into dirs
complete -d cd
shopt -s autocd
shopt -s globstar

# complete prefixed commands
complete -cf sudo
complete -cf man

# Aliases
alias l='ls -lh --color=always'
alias l.='ls * --color=always'
alias sd='sudo shutdown -h now'

alias v='nvim'
alias vf='nvim $(fzf)'
alias sev='sudo -E nvim'

alias xq='xbps-query'
alias xrm='sudo xbps-remove -Rvf'
alias xrc='sudo xbps-reconfigure -vf'

alias sx='sxiv -t *.{jpg,png,jpeg}'

alias r='lf'
alias sr='sudo lf'
alias z='zathura'
alias doc='zeal'

alias cl='GOGC=-1 scc -c --no-cocomo'

# fuzzy completion
[ -f $HOME/.fzf.bash ] && source $HOME/.fzf.bash
