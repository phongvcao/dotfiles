#!/bin/bash

# Set primary monitor to VGA1 if there is an external monitor plugged-in via
# VGA
XRANDR_OUTPUT=$(xrandr)
# IS_LVDS_CONNECTED=$(echo "${XRANDR_OUTPUT}" | grep "LVDS[0-9] connected" -c)
IS_VGA_CONNECTED=$(echo "${XRANDR_OUTPUT}" | grep "VGA[0-9] connected" -c)
RE_LVDS="LVDS([0-9])"
RE_VGA="VGA([0-9])"
export LVDS_NUM=1
export VGA_NUM=1

if [[ ${IS_VGA_CONNECTED} -gt 0 ]]; then
    if [[ "${XRANDR_OUTPUT}" =~ ${RE_VGA} ]]; then
        VGA_NUM="${BASH_REMATCH[1]}"
        xrandr --output VGA"${VGA_NUM}" --primary &
    else
        if [[ "${XRANDR_OUTPUT}" =~ ${RE_LVDS} ]]; then
            LVDS_NUM="${BASH_REMATCH[1]}"
            xrandr --output LVDS"${LVDS_NUM}" --primary &
        fi
    fi
fi

# If the VGA is 1920 in width
# xrandr --output LVDS"${LVDS_NUM}" --pos 0x312 &
# xrandr --output VGA"${VGA_NUM}" --right-of LVDS"${LVDS_NUM}" --pos 1366x0 &
xrandr --output LVDS"${LVDS_NUM}" --pos 0x0 &
# xrandr --output VGA"${VGA_NUM}" --above LVDS"${LVDS_NUM}" --pos 0x1080 &
xrandr --output VGA"${VGA_NUM}" --above LVDS"${LVDS_NUM}" --pos 277x1080 &

# If the VGA is 1280 in width
# xrandr --output LVDS"${LVDS_NUM}" --pos 0x0 &
# xrandr --output VGA"${VGA_NUM}" --right-of LVDS"${LVDS_NUM}" --pos 1366x86 &

# If the VGA is 1366 in width
# xrandr --output LVDS"${LVDS_NUM}" --pos 0x0 &
# xrandr --output VGA"${VGA_NUM}" --right-of LVDS"${LVDS_NUM}" --pos 1366x0 &

# feh ---bg-center "${HOME}/.config/i3/arch-white.png" --bg-center "${HOME}/.config/i3/arch-white.png" &
