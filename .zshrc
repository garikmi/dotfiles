# custom prompt
PS1="garik → %1~ %# "

# zap
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# plugins
plug "zdharma-continuum/fast-syntax-highlighting"
plug "jeffreytse/zsh-vi-mode"
plug "zsh-users/zsh-autosuggestions"
plug "marlonrichert/zsh-autocomplete"

# lunch lvim with vim or vi
alias vim="lvim"
alias vi="lvim"

# launch bat on cat
alias cat="bat"

# launc lsd on ls
alias ls="lsd"

# user double period to navigate back
alias ..="cd .."

# kitty in-terminal image preview
alias icat="kitty +kitten icat"

# exports
export PATH=$HOME/Library/Python/3.9/bin/:$PATH
export VISUAL="lvim"
export EDITOR="lvim"
