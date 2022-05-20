#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/march/polybar2/"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -c ~/.config/march/polybar2/config.ini example &

