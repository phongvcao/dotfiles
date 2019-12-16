#!/usr/bin/env bash

i3status -c "$HOME"/.config/i3/i3status.conf | (read line && echo "$line" && read line && echo "$line" && while :
do
    read line

    id=$(xprop -root | awk '/_NET_ACTIVE_WINDOW\(WINDOW\)/{print $NF}')

    name=$(xprop -id "$id" | awk '/_NET_WM_NAME/{$1=$2="";print}')

    user=$USER

    name="${name//[&]/&amp;}"
    name="${name//[>]/&gt;}"
    name="${name//[<]/&lt;}"

    if [[ -z "${name}" ]]; then
        name="\" Desktop \""
    fi

    if [[ "$name" =~ ^[[:space:]]+$ ]]; then
        name="\"\""
    fi

    name="[{ \"full_text\": ${name} }, "

    brightness=$(xbacklight -display "${DISPLAY}" | bc)
    brightness=${brightness%.*}
    brightness="{ \"full_text\": \" ⚙ ${brightness}% \" }"

    user="[{ \"full_text\": \"  ${user} \" }]"

    # Calculate uptime of the system
    uptime=$(</proc/uptime)
    uptime=${uptime%%.*}

    seconds=$(( uptime%60 ))
    minutes=$(( uptime/60%60 ))
    hours=$(( uptime/60/60%24 ))
    days=$(( uptime/60/60/24 ))

    uptimeStr=""

    if [[ ${days} -ne 0 ]]; then
        uptimeStr="${uptimeStr}${days}d "
    fi

    if [[ ${hours} -ne 0 ]]; then
        uptimeStr="${uptimeStr}${hours}h "
    fi

    if [[ ${minutes} -ne 0 ]]; then
        uptimeStr="${uptimeStr}${minutes}m "
    fi

    if [[ ${seconds} -ne 0 ]]; then
        uptimeStr="${uptimeStr}${seconds}s "
    fi

    uptime="{ \"full_text\": \"⇑ ${uptimeStr}\" }"

    weather=""
    # Calculate weather
    if [ -f "${HOME}/.weather_history" ] && [ -n "$(command find "${HOME}/.weather_history" -mmin -15)" ]; then
        weather="$(cat ${HOME}/.weather_history)"

    else
        if [ ! -f "${HOME}/.weather_history" ]; then
            echo -n "" > "${HOME}/.weather_history"
        fi

        ( ( bash "${HOME}/.config/i3/i3weather.sh" & ) & )
    fi

    new_line=${line/[/$name$uptime, }
    # new_line=${line/[/$name }
    new_line=${user/[/$new_line}
    new_line=${new_line/]{/, { }
    new_line=$(echo "${new_line}" | sed "s/^\(.*\)\(,{\"name\":\"volume\".*\)/\1, ${brightness}\2/")

    if [[ -n "${weather}" ]]; then
        new_line=$(echo "${new_line}" | sed "s/^\(.*\)\(,{\"name\":\"time\".*\)/\1, ${weather}\2/")
    fi

    echo "${new_line}" || exit 1

done)
