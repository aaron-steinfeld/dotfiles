export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(git brew gradle tmux vi-mode)
source $ZSH/oh-my-zsh.sh
DEFAULT_USER=`whoami`

alias gradle='gw'  
alias gwd='gw -Dorg.gradle.debug=true --info --no-daemon'
alias ls='ls -G'
alias cz="git cz --disable-emoji"


export EDITOR=vim
export PAGER="less -FRSX"
export GPG_TTY=$(tty)

if which tmux 2>&1 >/dev/null; then
    if [[ -z $TMUX_PANE ]]; then
        export PATH=$PATH:~/bin:/sbin:/usr/local/sbin
        tmux attach || tmux new-session
    fi
fi

