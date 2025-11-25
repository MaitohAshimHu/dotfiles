#!/bin/bash

# 1. Search for the Gemini window ID
# We look for a window where the title contains "Gemini"
WIN_ID=$(niri msg -j windows | jq -r '.[] | select(.title | contains("Gemini")) | .id')

if [ -z "$WIN_ID" ]; then
    # CASE A: Not running? Launch it.
    # We use a broad app-id match in config to make it float.
    chromium --app=https://gemini.google.com &
else
    # CASE B: It is running. Check if it is currently focused.
    IS_FOCUSED=$(niri msg -j windows | jq -r ".[] | select(.id == $WIN_ID) | .is_focused")

    if [ "$IS_FOCUSED" == "true" ]; then
        # If looking at it -> HIDE IT (Throw to Workspace 9)
        niri msg action move-window-to-workspace 9
    else
        # If hidden -> SHOW IT (Bring to current workspace & Float it)
        niri msg action move-window-to-workspace --id $WIN_ID current
        niri msg action move-window-to-floating --id $WIN_ID
        niri msg action focus-window --id $WIN_ID
    fi
fi
