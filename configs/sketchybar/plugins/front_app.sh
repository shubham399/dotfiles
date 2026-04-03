#!/usr/bin/env bash
source "$HOME/.config/sketchybar/plugins/icon_map.sh"
case "$SENDER" in
"front_app_switched")
  ICON=$(__icon_map "$INFO")
  sketchybar --set $NAME label=$INFO icon=$ICON icon.font="sketchybar-app-font:Regular"
  ;;
esac
