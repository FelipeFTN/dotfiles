#!/bin/bash

# Look for MCE errors in the last 15 minutes
LOG=$(journalctl --since "10 minutes ago" | grep -i "\[Hardware Error\]")

if [[ -n "$LOG" ]]; then
  notify-send -u critical "Hardware Error Detected" "Machine Check Exception detected in the last 10 minutes. It's recommended to reboot your PC to prevent instability."
fi
