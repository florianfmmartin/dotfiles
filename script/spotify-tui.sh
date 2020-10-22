#!/usr/bin/env zsh
if [ -z "$TMUX" ] && [ -z "$VIRTUAL_ENV" ] && [ -z "$PIPENV_ACTIVE" ]
then
    { tmux attach -t spotify 2>/dev/null || exec tmux new-session -n spt 'spt' \; rename-session spotify}
fi

