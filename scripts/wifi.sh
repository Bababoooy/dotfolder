#!/bin/bash

# Check if WiFi is on
wifi_status=$(rfkill list wifi | grep -i 'Soft blocked: yes')

if [[ -n "$wifi_status" ]]; then
  # WiFi is off, so unblock it
  rfkill unblock wifi
else
  # WiFi is on, so block it
  rfkill block wifi
fi

