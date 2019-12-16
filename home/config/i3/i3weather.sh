#!/usr/bin/env bash

LOCATION="San Jose"
LOCATION_CODE="fips0668000"
# LOCATION="Philadelphia"
# LOCATION_CODE="fips4260000"

weather_temp="$(exec weather-report --headers="Temperature" -q -m "${LOCATION_CODE}" | \
    awk -F 'Temperature: ' '{print $2}' | tr -d '\n' | awk -F ' C' '{print $1}')"
weather_sky_conditions="$(exec weather-report --headers="Sky conditions" -q -m "${LOCATION_CODE}" | \
    awk -F 'Sky conditions: ' '{print $2}' | tr -d '\n')"

weather="☁ ${weather_temp} °C ➜ *${weather_sky_conditions}*"
weather="{ \"full_text\": \" ${weather} \" }"

echo "${weather}" > "${HOME}/.weather_history"
