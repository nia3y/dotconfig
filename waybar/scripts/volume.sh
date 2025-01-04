#!/bin/bash

case "$1" in
--inc)
  pactl set-sink-volume @DEFAULT_SINK@ +5%
  ;;
--dec)
  pactl set-sink-volume @DEFAULT_SINK@ -5%
  ;;
--toggle)
  pactl set-sink-mute @DEFAULT_SINK@ toggle
  ;;
--mic-inc)
  pactl set-source-volume @DEFAULT_SOURCE@ +5%
  ;;
--mic-dec)
  pactl set-source-volume @DEFAULT_SOURCE@ -5%
  ;;
--toggle-mic)
  pactl set-source-mute @DEFAULT_SOURCE@ toggle
  ;;
*)
  echo "Usage: $0 {--inc|--dec|--toggle|--mic-inc|--mic-dec|--toggle-mic}"
  exit 1
  ;;
esac

exit 0
