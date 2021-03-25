TempCat=$(cat /sys/class/thermal/thermal_zone0/temp)
Temp=${TempCat:: -3}

[[ "$Temp" -gt 80 ]] && echo -e "[CPU \uf769 $Temp°C] | "
[[ "$Temp" -gt 70 ]] && echo -e "[CPU \uf2c8 $Temp°C] | "
[[ "$Temp" -gt 40 ]] && echo -e "[CPU \uf2c9 $Temp°C] | "
[[ "$Temp" -lt 40 ]] && echo -e "[CPU \uf76b $Temp°C] | "
