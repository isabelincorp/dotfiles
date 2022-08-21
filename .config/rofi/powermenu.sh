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
        i3lock -c 000000 --no-verify -u;;
    $option1)
        pkill awesome;;
    $option2)
        systemctl reboot -i;;
	$option3)
        systemctl poweroff -i;;
esac
