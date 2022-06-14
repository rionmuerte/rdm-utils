#!/usr/bin/env bash

args=()

while [ $# -ge 1 ]
do
  var=$1
  shift
  case $var in
    -i) args+=(-i "$1")
        shift ;;
    *)  msg="$var"
        args+=("$msg") ;;
  esac
done


for device in $(kdeconnect-cli --id-only -a)
do
    kdeconnect-cli -d "$device" --ping-msg "$msg"
done

notify-send -u normal "${args[@]}"
