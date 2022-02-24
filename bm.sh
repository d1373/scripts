#!/bin/sh

declare -a options=(
"1 - https://www.youtube.com"
"2 - https://www.reddit.com"
"3 - https://www.protonmail.com"
"4 - https://www.keybr.com"
"5 - https://www.monkeytype.com"
"6 - https://www.gogoanime.pe"
"7 - https://www.netflix.com"
"8 - https://www.amazon.in"
"quit"
)

choice=$(printf "%s\n" "${options[@]}" | rofi -dmenu -i  -p 'Bookmarks')

if [[ "$choice" == quit ]]; then
	echo "program terminated successfully" && exit 1
elif [ "choice" ]; then
	cfg=$(printf "%s\n" "${choice}" | awk '{ print $NF}')
	$BROWSER "$cfg"
else
	echo "program terminated successfully" && exit 1
fi


