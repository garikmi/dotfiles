# lunch nvim with vim or vi
alias vim="nvim"
alias vi="nvim"

# laungh bat on cat
alias cat="bat"

# Activate vim mode.
bindkey -v


# Plugins
# Autodsuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Vim mode
source ~/.zsh/zsh-vi-mode/zsh-vi-mode.plugin.zsh


# Remove mode switching delay.
KEYTIMEOUT=5

# Load user scripts
export PATH=/usr/local/bin:$PATH

# Load python scripts
export PATH=$HOME/Library/Python/3.8/bin/:$PATH

source "$HOME/.cargo/env"

