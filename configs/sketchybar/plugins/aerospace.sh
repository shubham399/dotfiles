#!/usr/bin/env bash
source "$HOME/.config/sketchybar/plugins/icon_map.sh"
source "$HOME/.config/common_wm/colors.sh"
source "$HOME/.config/common_wm/icons.sh"

OS="$(uname)"

get_foreground_app() {
    case "$OS" in
    "Darwin")
        # macOS
        current_app=$(osascript -e 'tell application "System Events" to name of first application process whose frontmost is true')
        ;;
    "Linux")
        # Linux (using xdotool, which may need to be installed)
        current_app=$(xdotool getwindowfocus getwindowname)
        ;;
    "CYGWIN"* | "MINGW"*)
        # Windows (using a PowerShell command)
        current_app=$(powershell -command "Get-Process | Where-Object { \$_.MainWindowHandle -ne 0 } | Select-Object -First 1 -ExpandProperty Name")
        ;;
    *)
        # Unsupported OS
        current_app="Unsupported OS"
        ;;
    esac

    # Handle the case where no app is detected or in focus
    if [ "$current_app" == "" ]; then
        current_app="No App"
    fi

    echo $current_app
}

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    APP_NAME=$(get_foreground_app)
    ICON=$(__icon_map $APP_NAME)
    sketchybar --set $NAME background.drawing=on label=$ICON label.font="sketchybar-app-font:Regular"
else
    sketchybar --set $NAME background.drawing=off label=$1 label.font="SF Pro:Semibold:13.0"
fi
