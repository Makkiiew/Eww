#!/bin/bash

# 1. Launch Konsole and run the update.
# The '--nofork' flag is CRITICAL: it tells the script to wait here until the window closes.
konsole --nofork -e bash -c "yay -Syu; echo ''; echo 'Press Enter to close...'; read"

# 2. After Konsole closes, force Eww to reload so it reruns your update checker
eww reload
