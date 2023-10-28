PS1="%F{white}[%n %F{green}➜ %F{cyan}%1~%F{white}] "

# Aliases.
alias vi="nvim"
alias vim="nvim"
# alias ls="ls -G"
alias ls="lsd"
alias cat="bat"
alias grep="grep --colour -i"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# VI mode.
export KEYTIMEOUT=1

# Paths.
export PATH=/usr/local/bin:$PATH

export EDITOR=vim

# Plugins.
source $HOME/.zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2> /dev/null
source $HOME/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh 2> /dev/null
source $HOME/.zsh/plugins/zsh-vi-mode/zsh-vi-mode.zsh 2> /dev/null
