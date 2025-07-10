#!/bin/bash

battery_percent=$(cat /sys/class/power_supply/BAT0/capacity)
battery_status=$(cat /sys/class/power_supply/BAT0/status)

if [ "$battery_status" = "Discharging" ] && [ "$battery_percent" -lt 15 ]; then
    notify-send -u critical "Battery low" "$battery_percent% remaining"
else
    echo $battery_percent%
fi
