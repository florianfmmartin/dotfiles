#!/usr/bin/env sh

if [[ $(bspc config window_gap) == 0 ]]
then
    bspc config border_width          4
    bspc config window_gap            12
else
    bspc config border_width          0
    bspc config window_gap            0
fi
