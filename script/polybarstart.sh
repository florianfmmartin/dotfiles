#!/usr/bin/env bash

# terminate
killall -QUIT polybar

polybar-msg cmd quit

# launch bar
(sleep 2 ; polybar main) &

echo "done"
