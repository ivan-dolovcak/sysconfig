#!/bin/sh

KILL_SWITCH=/tmp/no_shutdown
POWER_ON_TIMESTAMP_SEC=$(/usr/bin/date -d "today 7:00" +\%s)

if [ -f "$KILL_SWITCH" ]; then
	rm "$KILL_SWITCH"
else
	exec /usr/sbin/rtcwake -m off -t "$POWER_ON_TIMESTAMP_SEC"
fi
