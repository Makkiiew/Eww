#!/bin/bash

# 1. Get current desktop ID (0-indexed or 1-indexed depending on KDE version)
# We use a fallback if the command fails
current=$(qdbus6 org.kde.KWin /KWin org.kde.KWin.currentDesktop || echo 1)

# 2. Define your desktops manually (Best for KDE)
# JSON format is required for Eww's "literal" widget
cat <<EOF
[
  { "id": 1, "name": "一", "active": $(if [ "$current" -eq 1 ]; then echo "true"; else echo "false"; fi) },
  { "id": 2, "name": "二", "active": $(if [ "$current" -eq 2 ]; then echo "true"; else echo "false"; fi) },
  { "id": 3, "name": "三", "active": $(if [ "$current" -eq 3 ]; then echo "true"; else echo "false"; fi) },
  { "id": 4, "name": "四", "active": $(if [ "$current" -eq 4 ]; then echo "true"; else echo "false"; fi) }
]
EOF
