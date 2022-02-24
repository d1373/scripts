#!/bin/sh
value=`acpi | awk '$2 ~ /^[0]/ {print $4}' | awk -F "," '{print $1}'`
batterystatus=`cat /sys/class/power_supply/BAT0/status`
#   
check=`echo $batterystatus`
if [[ "$check" = "Charging" ]]; then 
	echo  : $value
else 
	echo  : $value
fi
