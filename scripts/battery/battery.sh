#!/bin/bash
export DISPLAY=:0
XAUTHORITY=/home/eidros/.Xauthority

if [ -r "$HOME/.dbus/Xdbus" ]; then
    . "$HOME/.dbus/Xdbus"
fi

battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`

# I tried to only notify when not charging, but could not get it to work
# STATUS=$(cat /sys/class/power_supply/ADP1/online)
# if [ $battery_level -le 15 ] && [ $STATUS == "0" ]

if [ $battery_level -le 70 ]
then
    /usr/bin/notify-send -u critical "Battery low" "Battery level is ${battery_level}%!"
    echo 'batt low' >> /home/eidros/cron.log
fi

echo 'ran batt' >> /home/eidros/cron.log
