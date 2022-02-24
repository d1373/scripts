#!/bin/bash
choice=$(echo -e "1 - ⏻shutdown\n2 - ⏼reboot\n3 - ⏾lock\n4 - ⚿logout" | rofi -dmenu -p power-options| awk '{print $1}')
if [ $choice -eq 1 ]
then
  shutdown now
elif [ $choice -eq 2 ]
then
  reboot
elif [ $choice -eq 3 ]
then
  loginctl lock-session ${XDG_SESSION_ID-}
elif [ $choice -eq 4 ]
then
  loginctl terminate-session ${XDG_SESSION_ID-}
else 
	echo "program terminated successfully" && exit 1
fi

