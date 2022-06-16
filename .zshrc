# My config
# Launch nvim with vim or vi
alias vim="nvim"
alias vi="nvim"

# Remove vim mode esc time out
KEYTIMEOUT=0

# bindkey -v

# Vim mode plugin
# https://github.com/jeffreytse/zsh-vi-mode
source "$HOME/.config/zsh_plugins/zsh_vi_mode/zsh-vi-mode.plugin.zsh"

# Custom zsh theme
# inspired by jovial zsh theme: https://github.com/zthxxx/jovial
PROMPT=$'\n''╭─[%F{#c4a7e7}%m%f] %F{102}as%f %n %F{102}in%f %F{#f6c177}%2~%f'$'\n╰─➤ '

# Setup Rust
export PATH="$HOME/.cargo/bin:$PATH"
