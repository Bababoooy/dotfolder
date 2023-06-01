#!/bin/bash

# Run the command to extract battery percentage and store the output in a variable
battery_info=$(bluetoothctl info | awk '/Battery Percentage:/ {gsub(/[^0-9]/,"",$NF); print $NF}')

# Check if the battery_info variable is empty
if [[ -n "$battery_info" ]]; then
    echo "$battery_info%"
else
    echo "Offline"
fi
