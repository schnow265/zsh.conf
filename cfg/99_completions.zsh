autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

autoload -U compinit
compinit
zinit light Aloxaf/fzf-tab

eval "$(zoxide init zsh --cmd cd)"
