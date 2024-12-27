autoload -U colors && colors
#PS1="%{$fg[yellow]%}%~%{$reset_color%} %% "

function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]]; then
    printf " "
  else
    echo ' ('$branch') '
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst

# Config for prompt. PS1 synonym.
prompt='%{$fg[yellow]%}%~%{$reset_color%}%{$fg[blue]%}$(git_branch_name)%{$reset_color%}%% '

bindkey -e

alias ls="ls -GF"
alias tree="tree -C"
alias grep="grep --colour"

alias pi="ssh pi@raspberry.local"
alias aws="ssh admin@54.71.118.239"

alias update="brew update && brew upgrade"
alias cleanup="brew autoremove && brew cleanup"

export PATH="/usr/local/bin:$PATH"

export EDITOR="vim"
