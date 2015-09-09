# vim:ft=zsh ts=2 sw=2 sts=2

rvm_current() {
  rvm current 2>/dev/null
}

rbenv_version() {
  rbenv version 2>/dev/null | awk '{print $1}'
}

PROMPT='
%{$fg_bold[magenta]%}%m%{$reset_color%} %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%} '"\$(git-radar --zsh --fetch --no-remote-status) "' ⌚ %{$fg_bold[red]%}%*%{$reset_color%}
$ '


#ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}" 
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
#ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
#ZSH_THEME_GIT_PROMPT_CLEAN=""

RPROMPT='%{$fg_bold[red]%}$(rbenv_version)%{$reset_color%}'
