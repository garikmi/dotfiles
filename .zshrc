# My config
# Launch nvim with vim or vi
alias vim="nvim"
alias vi="nvim"

# Remove vim mode esc time out
KEYTIMEOUT=0

# Vim mode plugin
# https://github.com/jeffreytse/zsh-vi-mode
source "$HOME/.config/zsh_plugins/zsh_vi_mode/zsh-vi-mode.plugin.zsh"

# Augosuggestions plugin
# https://github.com/zsh-users/zsh-autosuggestions
source "$HOME/.config/zsh_plugins/zsh_autosuggestions/zsh-autosuggestions.zsh"

# Setup Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Custom zsh theme
# inspired by jovial zsh theme: https://github.com/zthxxx/jovial
PROMPT=$'\n''╭─[%F{157}%m%f] %F{102}as%f %n %F{102}in%f %F{228}%2~%f'$'\n╰─➤ '
