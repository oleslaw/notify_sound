#!/bin/bash

# default sound file
sound_file=${2:-/usr/share/sounds/freedesktop/stereo/message-new-instant.oga}

if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    cat << EOF
Usage: $0 [OPTIONS] APP_NAME

Monitors the specified APP_NAME for notifications and plays a sound file when a notification is received.

Options:
  -h, --help    Display this help message and exit.
  -s, --sound   Specify a different sound file to play when a notification is received.

Examples:
  $0 firefox
  $0 -s /path/to/custom/sound.ogg firefox
EOF
    exit 0
fi

if [ -z "$1" ]; then
    echo "Usage: $0 [OPTIONS] APP_NAME"
    echo "Try '$0 --help' for more information."
    exit 1
fi

if [ "$1" == "-s" ] || [ "$1" == "--sound" ]; then
    sound_file="$2"
    shift 2
fi

if [ ! -f "$sound_file" ]; then
    echo "Error: Sound file not found: $sound_file"
    exit 1
fi

app_name="$1"
while IFS='$\n' read -r line; do
    if echo $line | grep "string \"$app_name\"" -q; then
        paplay "$sound_file" &
    fi
done < <(dbus-monitor "interface='org.freedesktop.Notifications'" | grep --line-buffered -e "string \"$app_name\"")