#!/bin/sh

LAPTOP_OUTPUT="eDP-1"
LID_STATE_FILE="/proc/acpi/button/lid/LID/state"

read -r LS < "$LID_STATE_FILE"

case "$LS" in
    *closed*)
        # Lid is closed, turn off the laptop display
        swaymsg output "$LAPTOP_OUTPUT" disable
        ;;
    *open*)
        # Lid is open, turn on the laptop display
        swaymsg output "$LAPTOP_OUTPUT" enable
        ;;
esac
