# Created by Zap installer
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

PS1="%F{white}[🍏 %F{green}➜ %F{cyan}%1~%F{white}] "

alias vim=nvim
alias vi=nvim
alias ls="ls --color"

plug "zsh-users/zsh-autosuggestions"

export PATH=$HOME/Library/Python/3.9/bin:$PATH
export PATH=/Users/garik/.local/bin:$PATH
export PATH=$HOME/go/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/opt/homebrew/opt/postgresql@15/bin:$PATH
export PATH=$HOME/.cargo/env:$PATH

eval "$(/opt/homebrew/bin/brew shellenv)"
