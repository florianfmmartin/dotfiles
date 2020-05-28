#!/usr/bin/env zsh

vicd()
{
        local dst="$(command vifm --choose-dir - "$@")"
        if [ -z "$dst" ]; then
                echo 'cd cancel'
                return 1
        fi
        cd "$dst"
}

vicd
zsh

