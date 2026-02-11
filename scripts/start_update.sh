#!/bin/bash

# Open Konsole and tell it to:
# 1. Run 'yay'
# 2. Print a message when done
# 3. Wait for you to press Enter (read) so the window stays open
konsole -e bash -c "yay; echo '----------------'; read -p 'Updates finished. Press Enter to close.' ans"
