#!/bin/bash

# NOTE: You need the "playerctl" package in order for this to work!!!

exec 2>/dev/null

if [ "$(playerctl status)" = "Playing" ]; then
  title=`exec playerctl metadata xesam:title`
  artist=`exec playerctl metadata xesam:artist`

  # Check if the length of artist is greater than 15 characters
  if [ ${#artist} -gt 15 ]; then
    artist="${artist:0:15}..." # Truncate if it's longer
  fi

  echo "[$artist] $title"
else
  echo "No song currently playing"
fi
