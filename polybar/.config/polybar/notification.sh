#!/bin/bash

exec 2>/dev/null

function display() {
  if [ "$(dunstctl is-paused)" = "false" ]; then
    echo "%{F#c6c6c6}󰂚 $(dunstctl count displayed)%{F-}"
  else
    echo "%{F#828282}󰂛 $(dunstctl count waiting)%{F-}"
  fi
}

# Get parameter from the command line (toggle)
if [ "$1" = "toggle" ]; then
  $(dunstctl set-paused toggle)
  echo $(display)
fi

echo $(display)
