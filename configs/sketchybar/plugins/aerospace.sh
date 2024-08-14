#!/usr/bin/env bash
source "$HOME/.config/sketchybar/plugins/icon_map.sh"
source "$HOME/.config/common_wm/colors.sh"
source "$HOME/.config/common_wm/icons.sh"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    APP_NAME=$(osascript -e 'tell application "System Events" to get name of first application process whose frontmost is true')
    ICON=$(__icon_map $APP_NAME)
    sketchybar --set $NAME background.drawing=on label=$ICON label.font="sketchybar-app-font:Regular"
else
    sketchybar --set $NAME background.drawing=off label=$1 label.font="SF Pro:Semibold:13.0"
fi
