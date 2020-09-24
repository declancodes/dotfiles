export LSCOLORS='exfxcxdxbxegedabagacad'
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'
export PROMPT='%~$(git-prompt-info)$ '
export WORDCHARS='*?_[]~=&;!#$%^(){}'

export PATH=$PATH:$HOME/.ghcup/bin/
export PATH=$PATH:/usr/local/go/bin/
export PATH=$PATH:$HOME/go/bin/

setopt auto_cd
setopt prompt_subst

git-prompt-info() {
  git rev-parse --is-inside-work-tree &>/dev/null || return

  echo " %F{green}($(current-git-branch)%f $(git-dirty)%F{green})%f"
}

current-git-branch() {
  git symbolic-ref --short -q HEAD
}

git-dirty() {
  test -z "$(command git status --porcelain --ignore-submodules -unormal)"
  if [[ $? -eq 1 ]]; then
    echo '%F{red}✗%f'
  else
    echo '%F{green}✔%f'
  fi
}

source $HOME/.aliases
