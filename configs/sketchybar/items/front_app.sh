#!/usr/bin/env bash
# shellcheck disable=SC2016


sketchybar --add event window_focus \
    --add event windows_on_spaces \
    --add item front_app left \
    --set front_app script="$PLUGIN_DIR/front_app.sh" \ \
    icon.font="$FONT:Bold:13.0" \
    icon.color="$ORANGE" \
    icon="❓" \
    padding_left=0 \
    label.color="$ORANGE" \
    label.font="$FONT:Black:13.0" \
    associated_display=active \
    --subscribe front_app front_app_switched
