#!/bin/bash

# 1. Count official updates
off=$(checkupdates | wc -l)

# 2. Count AUR updates (if you use yay)
aur=$(yay -Qua | wc -l)

# 3. Sum them up
total=$((off + aur))

# 4. Output logic
if [ "$total" -gt 0 ]; then
  echo "$total"
else
  echo ""
fi
