PS1="%n %1~ %# "

bindkey -v
bindkey "^?" backward-delete-char
bindkey ^R history-incremental-search-backward 
bindkey ^S history-incremental-search-forward
KEYTIMEOUT=1

alias ls="ls -GF"
alias grep="grep --colour"

alias pi="ssh pi@raspberry"
alias aws="ssh admin@54.71.118.239"

alias pf="fzf --preview='less {}' --bind shift-up:preview-page-up,shift-down:preview-page-down"

bindkey -s '^e' 'vim $(fzf --preview="less {}" --bind shift-up:preview-page-up,shift-down:preview-page-down)\n'

export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/Library/Python/3.9/bin:$PATH"
export EDITOR="vim"
