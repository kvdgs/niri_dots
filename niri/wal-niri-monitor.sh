#!/bin/bash

# Monitoruj plik colors.sh na zmiany
inotifywait -m -e close_write ~/.cache/wal/colors.sh |
while read path action file; do
    # Załaduj nowe kolory
    source ~/.cache/wal/colors.sh
    
    # Zaktualizuj config niri
    sed -i "s/active-color \".*\"/active-color \"$color1\"/" ~/.config/niri/config.kdl
    sed -i "s/inactive-color \".*\"/inactive-color \"$color0\"/" ~/.config/niri/config.kdl
done