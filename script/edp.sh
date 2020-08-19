#!/bin/sh
xrandr --output HDMI1 --off --output DP1 --off --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI2 --off --output VIRTUAL1 --off

killall -QUIT polybar

polybar-msg cmd quit

(sleep 2; polybar main) &

bspc monitor eDP1 -d I II III IV
bspc monitor HDMI1 -r

bspc wm -r

