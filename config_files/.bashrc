# 24-06-05
BLUE='\[\033[01;34m\]'
GREEN='\[\033[01;32m\]'
NONE='\[\033[00m\]'
#export PS1=$BLUE' \w \$ '$NONE
source ~/.git-prompt.sh
export PS1=$BLUE' \w'$GREEN'$(__git_ps1 " (%s)")'$BLUE' \$ '$NONE
export SUDO_EDITOR='vim'
export TERM='screen-256color'

alias ls='ls --color'
alias grep='grep --color'
