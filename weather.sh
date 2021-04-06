#!/bin/sh

weather_temp=$(curl wttr.in?format=%t)
weather_temp=${weather_temp:: -2}
weather_temp=${weather_temp: 1}

[[ $weather_temp > 30 ]] && echo -e "weather ☼ $weather_temp | "
[[ $weather_temp > 20 ]] && echo -e "weather ☀ $weather_temp | "
[[ $weather_temp < 20 ]] && echo -e "weather ❄ $weather_temp | "
