#!/usr/bin/env zsh
if [ -z "$TMUX" ] && [ -z "$VIRTUAL_ENV" ] && [ -z "$PIPENV_ACTIVE" ]
then
    TMUXLS=$(tmux ls 2>&1)
    if [[ "$TMUXLS" == "no server running on /tmp/tmux-1000/default" ]]
    then
        echo -n "tmux sesh: "
        read INPUT
    else
        tmux ls
        echo -n "tmux sesh: "
        read INPUT
    fi
else
    INPUT=""
fi

if [ -z "$INPUT" ]
then
else
    { tmux attach -t $INPUT 2>/dev/null || tmuxp load $INPUT 2>/dev/null || exec tmux new-session -t $INPUT;}
fi

