autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "

# bindkey -e
bindkey -v
KEYTIMEOUT=1
bindkey "^D" delete-char
bindkey "^H" backward-delete-char
bindkey "^F" forward-char
bindkey "^B" backward-char
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^K" kill-word
bindkey "^?" backward-delete-char
bindkey ^R history-incremental-search-backward
bindkey ^S history-incremental-search-forward

alias ls="ls -GF"
alias grep="grep --colour"

alias pi="ssh pi@raspberry.local"
alias aws="ssh admin@54.71.118.239"

alias pf="fzf --preview='less {}' --bind shift-up:preview-page-up,shift-down:preview-page-down"
bindkey -s '^z' 'vim $(fzf --preview="less {}" --bind shift-up:preview-page-up,shift-down:preview-page-down)\n'
alias update="brew update && brew upgrade"
alias cleanup="brew autoremove && brew cleanup"

export PATH="/usr/local/bin:$PATH"
export PATH="/opt/gcc-13.2.0-aarch64/bin:$PATH"
export PATH="$HOME/Library/Python/3.9/bin:$PATH"
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"
export EDITOR="vim"
