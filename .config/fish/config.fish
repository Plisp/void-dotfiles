
set fish_greeting
picom-trans -c 90

source ~/.fzf/shell/key-bindings.fish
function fish_user_key_bindings
	fzf_key_bindings
end

alias key "screenkey --mods-mode emacs -s small --opacity 0.3 --no-systray -p top"
alias wpa "sudo wpa_supplicant -iwlp5s0 -c /etc/wpa_supplicant/home.conf -B"

alias xq "xbps-query"
alias xrm "sudo xbps-remove -Rvf"
alias xrc "sudo xbps-reconfigure -vf"

alias v "nvim"
alias l "exa -l"
alias diff "diff --color=always -u"
alias iv "sxiv -t *.{jpg,png,jpeg}"
alias r "lf"
alias sr "sudo -E lf"
alias z "zathura"
alias cl "GOGC=-1 scc -c --no-cocomo"
