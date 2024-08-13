#!/usr/bin/env bash
# shellcheck disable=SC2016

# Command to retrieve the app icon path (this will depend on your system setup)
# Example placeholder: retrieve the icon using a custom script or command

# Front app label and icon update script
FRONT_APP_SCRIPT='sketchybar --set $NAME  label="$INFO"'

sketchybar --add event window_focus \
    --add event windows_on_spaces \
    --add item front_app left \
    --set front_app script="$FRONT_APP_SCRIPT" \
    icon.font="$FONT:Bold:13.0" \
    icon.color="$ORANGE" \
    padding_left=0 \
    label.color="$ORANGE" \
    label.font="$FONT:Black:13.0" \
    associated_display=active \
    --subscribe front_app front_app_switched 
