#!/bin/sh
clip=`xclip -o | tr " " "+"`
eval "firefox https://google.com/search?q=$clip"
