#!/bin/sh
clip=`xclip -o | tr " " "+"`
#eval "brave-beta https://duckduckgo.com/?q=$clip"
#eval "brave-beta https://search.brave.com/search?q=$clip"
#eval "brave https://duckduckgo.com/?q=$clip"
#eval "brave https://search.brave.com/search?q=$clip"
eval "$BROWSER https://duckduckgo.com/?q=$clip"
#eval "firefox https://search.brave.com/search?q=$clip"
#eval "librewolf https://duckduckgo.com/?q=$clip"
#eval "librewolf https://search.brave.com/search?q=$clip"

