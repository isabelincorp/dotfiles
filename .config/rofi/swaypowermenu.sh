#!/bin/bash

# options to be displayed
option0="lock screen"
option1="logout"
option2="reboot"
option3="poweroff"

# options passed into variable
options="$option0\n$option1\n$option2\n$option3"

chosen="$(echo -e "$options" | rofi -lines 8 -dmenu -p "power")"
case $chosen in
    $option0)
        swaylock --color "#000000" --grace 10000 --grace-no-mouse --fade-in 0.0;;
    $option1)
        killall sway;;
    $option2)
        systemctl reboot -i;;
	$option3)
        systemctl poweroff -i;;
esac
