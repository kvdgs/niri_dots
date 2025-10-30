#!/bin/bash

options="󰍃 Log out\n󰜉 Restart\n󰐥 Turn off"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "Menu zasilania" -theme ~/.config/rofi/powermenu.rasi)

case $chosen in
    "󰍃 Log out")
        zenity --question --text='Na pewno wylogować?' && killall niri
        ;;
    "󰜉 Restart")
        zenity --question --text='Na pewno zrestartować komputer?' && systemctl reboot
        ;;
    "󰐥 Turn off")
        zenity --question --text='Na pewno wyłączyć komputer?' && systemctl poweroff
        ;;
esac