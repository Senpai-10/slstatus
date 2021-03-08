# Temp="$(cat /sys/class/thermal/thermal_zone0/temp)/1000 | bc"

TempCat=$(cat /sys/class/thermal/thermal_zone0/temp)
Temp=${TempCat:: -3}

if [ "$Temp" -gt 80 ]; then
    echo "[CPU  $Temp°C] | "
elif [ "$Temp" -gt 70 ]; then
    echo "[CPU  $Temp°C] | "
elif [ "$Temp" -gt 40 ]; then
    echo "[CPU  $Temp°C] | "
else
    echo "[CPU  $Temp°C] | "

fi
# [CPU  %s\u00b0C]
