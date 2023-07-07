# Created by Zap installer
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

PS1="%F{white}[🍏 %F{green}➜ %F{cyan}%1~%F{white}] "

alias vim=nvim
alias vi=nvim
alias ls="ls --color"
alias grep="grep --colour"

plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"

export PATH=$HOME/Library/Python/3.9/bin:$PATH
export PATH=/Users/garik/.local/bin:$PATH
export PATH=$HOME/go/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/opt/homebrew/opt/postgresql@15/bin:$PATH
export PATH=$HOME/.cargo/env:$PATH

eval "$(/opt/homebrew/bin/brew shellenv)"

# navigation complition with tab
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -i
_comp_options+=(globdots)

# navigate complition menu with vim keys
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
