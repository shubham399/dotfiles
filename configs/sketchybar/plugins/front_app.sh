#!/usr/bin/env bash

get_focused_app_icon_for_workspace() {
  APP_NAME=$1

  case "$APP_NAME" in
  "Arc")
    echo "🌐" # Globe icon for Arc
    ;;
  "Cursor" | "WezTerm")
    echo "💻" # Laptop icon for Cursor and WezTerm
    ;;
  "Finder")
    echo "🗂" # Folder icon for Finder
    ;;
  "Slack")
    echo "💬" # Chat bubble for Slack
    ;;
  # Add more applications here
  *)
    echo "❓" # Unknown app icon
    ;;
  esac
}

case "$SENDER" in
"front_app_switched")
  if [ -z "$INFO" ]; then
    sketchybar --set $NAME label="" icon=""
  else
    sketchybar --set $NAME label="$INFO" icon=$(get_focused_app_icon_for_workspace "$INFO")
  fi
  ;;
esac
