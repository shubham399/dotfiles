#!/usr/bin/env bash
source "$HOME/.config/sketchybar/plugins/icon_map.sh"
source "$HOME/.config/common_wm/colors.sh"
source "$HOME/.config/common_wm/icons.sh"

get_foreground_app() {
    CURRENT_APP=$(aerospace list-windows --focused --format '%{app-name}')
    if [ $? -eq 0 ]; then
        echo "$CURRENT_APP"
    else
        echo ""
    fi
}

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    APP_NAME=$(get_foreground_app)

    if [ -z "$APP_NAME" ]; then
        sketchybar --set $NAME background.drawing=on label=$1 label.font="SF Pro:Semibold:13.0"
    else
        ICON=$(__icon_map $APP_NAME)
        sketchybar --set $NAME background.drawing=on label=$ICON label.font="sketchybar-app-font:Regular"
    fi
else
    sketchybar --set $NAME background.drawing=off label=$1 label.font="SF Pro:Semibold:13.0"
fi
