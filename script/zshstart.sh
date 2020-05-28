#!/usr/bin/env zsh
if [ -z "$TMUX" ] && [ -z "$VIRTUAL_ENV" ] && [ -z "$PIPENV_ACTIVE" ]
then
        tmux ls
        echo -n "tmux sesh: "
        read INPUT
else
        INPUT=""
fi

if [ -z "$INPUT" ]
then
else
        { tmux attach -t $INPUT || tmuxp load $INPUT || exec tmux new-session -t $INPUT;}
fi

