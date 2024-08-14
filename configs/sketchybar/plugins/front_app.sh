#!/usr/bin/env bash

get_focused_app_icon_for_workspace() {
  APP_NAME=$1

  case "$APP_NAME" in
  "Arc")
    echo "🌐" # Globe icon for Safari
    ;;
  "Cursor")
    echo "💻" # Laptop icon for Terminal
    ;;
  "WezTerm")
    echo "💻" # Laptop icon for Terminal
    ;;
  "Finder")
    echo "🗂" # Folder icon for Finder
    ;;
  "Slack")
    echo "💬" # Chat bubble or any emoji for Slack
    ;;
  # Add more applications here
  *)
    echo "❓" # Default icon if app is not recognized
    ;;
  esac
}

case "$SENDER" in
"front_app_switched")
  sketchybar --set $NAME label="$INFO" icon=$(get_focused_app_icon_for_workspace $INFO)
  ;;
esac
