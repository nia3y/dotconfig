#!/bin/bash

case "$1" in
--toggle)
  if bluetoothctl show | grep -q "Powered: yes"; then
    bluetoothctl power off
  else
    bluetoothctl power on
  fi
  ;;
*)
  echo "Usage: $0 {--toggle}"
  exit 1
  ;;
esac

exit 0
