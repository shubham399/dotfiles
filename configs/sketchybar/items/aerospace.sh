#!/bin/bash

for sid in $(aerospace list-workspaces --all); do
    sketchybar --add item space.$sid left \
        --subscribe space.$sid aerospace_workspace_change \
        --set space.$sid \
        background.color=$ORANGE \
        background.corner_radius=5 \
        background.height=20 \
        background.drawing=off \
        label="$sid" \
        label.padding_left=5 \
        label.padding_right=15 \
        label.align=center \
        click_script="aerospace workspace $sid" \
        script="$CONFIG_DIR/plugins/aerospace.sh $sid"
done
