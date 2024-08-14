#!/usr/bin/env bash
PLUGIN_DIR="$HOME/.config/sketchybar/plugins"
source "$PLUGIN_DIR/icon_map.sh"
case "$SENDER" in
"front_app_switched")
  ICON=$(__icon_map "$INFO")
  sketchybar --set $NAME label=$INFO icon=$ICON icon.font="sketchybar-app-font:Regular"
  ;;
esac
