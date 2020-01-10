# Load personal settings
[ -f ~/.personal ] && source ~/.personal

#dash -E
#transset -a 0.88 >/dev/null

export PS1="\[$(tput bold)\]\[$(tput setaf 2)\][\[$(tput setaf 6)\]\u\[$(tput setaf 4)\]@\[$(tput setaf 1)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 2)\]]\[$(tput setaf 6)\]\\$\[$(tput sgr0)\] "

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

alias v='nano'
alias vf='nano $(fzf)'
alias sev='sudo -E nano'

alias xq='xbps-query'
alias xrm='sudo xbps-remove -Rvf'
alias xrc='sudo xbps-reconfigure -vf'

alias sx='sxiv -t *.{jpg,png}'

alias r='nnn'
alias sr='sudo nnn'
alias z='zathura'

alias cl='GOGC=-1 scc -c --no-cocomo'

# fuzzy completion
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
