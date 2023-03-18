[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

PS1=" %F{green}➜ %F{cyan}%1~%F{white} "

export EDITOR=nvim
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

alias vi=nvim
alias vim=nvim
alias cat=bat
alias ls=lsd

plug "zdharma-continuum/fast-syntax-highlighting"
plug "jeffreytse/zsh-vi-mode"
plug "zsh-users/zsh-autosuggestions"
plug "marlonrichert/zsh-autocomplete"

export PATH=$HOME/Library/Python/3.9/bin:$PATH
export PATH=/Users/garik/.local/bin:$PATH
export PATH=$HOME/go/bin:$PATH
export PATH=/usr/local/bin:$PATH

eval "$(/opt/homebrew/bin/brew shellenv)"
