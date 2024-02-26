#!/bin/bash

# Battery Warning Status
# This file should be placed at the following path:
# - /etc/acpi/actions/low_battery_warning.sh
#
# You need to create a file at:
# - /etc/acpi/events/low_battery_warning
# Place into it the following content:
# ```
# event=battery.*
# action=/etc/acpi/actions/low_battery_warning.sh
# ```
# By: FelipeFTN

export DISPLAY=:0 # This is needed so that the script can post to the display (using the zenity command, running through su as steph).

battery_info="$(acpi -b | awk '{print $5}')"
battery_percent="$(acpi -b | awk -F ', ' '{print $2}')"

# Debugging stuff
# echo "$battery_info"
# echo "$battery_percent"

if [[ "$battery_info" < 00:30:00 ]] ; then
       notify-send "❗ Warning: Battery medium" "Battery Status: $battery_percent"
elif [[ "$battery_info" < 00:15:00 ]] ; then
       notify-send "⚠️ Warning: Battery low" "Battery Status: $battery_percent"
elif [[ "$battery_info" < 00:05:00 ]] ; then
       notify-send "💀 Warning: Battery extremely low" "Battery Status: $battery_percent"
fi
