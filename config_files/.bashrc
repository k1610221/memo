# 24-06-09
BLACK='\[\033[01;30m\]'
RED='\[\033[01;31m\]'
GREEN='\[\033[01;32m\]'
YELLOW='\[\033[01;33m\]'
BLUE='\[\033[01;34m\]'
PURPLE='\[\033[01;35m\]'
CYAN='\[\033[01;36m\]'
WHITE='\[\033[01;37m\]'
NONE='\[\033[00m\]'

# Prompt
if [ -e $HOME/.git-prompt.sh ]; then
    source $HOME/.git-prompt.sh
    export PS1=$GREEN' \w'$YELLOW'$(__git_ps1 " (%s)")'$GREEN' \$ '$NONE
else
    export PS1=$BLUE' \w \$ '$NONE
fi

export SUDO_EDITOR='vim'
export TERM='screen-256color'

alias ls='ls --color'
alias grep='grep --color'

# Auto start tmux
if [ -x "$(command -v tmux)" ] && [ -z "${TMUX}" ]; then
    exec tmux new-session
fi
