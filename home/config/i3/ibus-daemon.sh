#!/usr/bin/env bash

IBUS_QUERY=$(ps ax |
grep -v grep |
grep 'ibus-engine-simple')

if [[ -n ${IBUS_QUERY} ]]; then
	export IBUS_CURRENT_ENGINE=$(ibus engine)
	killall ibus-engine-unikey

	if [[ ${IBUS_CURRENT_ENGINE} == "xkb:us::eng"  ]]; then
		ibus engine Unikey
	else
		ibus engine xkb:us::eng
	fi
else
	ibus-daemon &
fi
