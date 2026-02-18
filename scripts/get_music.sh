#!/bin/bash

# 1. Get the status (Playing/Paused/Stopped)
status=$(playerctl status 2> /dev/null)

# 2. Define icons
PLAY_ICON="🎵"
PAUSE_ICON="⏸️"

# 3. Output logic
if [ "$status" = "Playing" ]; then
    # Get metadata (Artist - Title) and limit length to 30 chars so it doesn't break your bar
    info=$(playerctl metadata --format "{{ artist }} - {{ title }}" | cut -c 1-40)
    echo "$PLAY_ICON  $info..."
elif [ "$status" = "Paused" ]; then
    info=$(playerctl metadata --format "{{ artist }} - {{ title }}" | cut -c 1-40)
    echo "$PAUSE_ICON  $info..."
else
    echo "" # Print nothing if spotify is closed
fi
