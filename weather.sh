#!/bin/sh

weather_temp=$(curl wttr.in?format=%t)

echo -e "weather temperature  $weather_temp | "
