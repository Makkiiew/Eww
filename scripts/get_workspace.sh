#!/bin/bash

# 1. Get the current desktop number from KDE
# We treat the output as a variable named 'id'
id=$(qdbus6 org.kde.KWin /KWin org.kde.KWin.currentDesktop)

# 2. Translate the ID to a Name
case $id in
  1) echo "一" ;;      # Japanese '1' + English
  2) echo "二" ;;
  3) echo "三" ;;
  4) echo "四" ;;
  *) echo "Desktop $id" ;; # Default fallback
esac
