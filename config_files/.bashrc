# 24-06-08
BLUE='\[\033[01;34m\]'
GREEN='\[\033[01;32m\]'
NONE='\[\033[00m\]'

# Prompt
if [ -e $HOME/.git-prompt.sh ]; then
    source $HOME/.git-prompt.sh
    export PS1=$BLUE' \w'$GREEN'$(__git_ps1 " (%s)")'$BLUE' \$ '$NONE
else
    export PS1=$BLUE' \w \$ '$NONE
fi

export SUDO_EDITOR='vim'
export TERM='screen-256color'

alias ls='ls --color'
alias grep='grep --color'

# Auto start tmux
if [ -x "$(command -v tmux)" ] && [ -z "${TMUX}" ]; then
    exec tmux new-session -A -s ${USER} > /dev/null 2>&1
fi
