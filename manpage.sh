#!/bin/sh
man -k . | rofi -dmenu -l 20 | awk '{print $1}' | xargs -r man | nvim -c 'set ft=man' -
#man -k . | rofi -dmenu -l 20 | awk '{print $1}' | xargs -r man -Tpdf | zathura - 
