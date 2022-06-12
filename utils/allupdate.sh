#!/usr/bin/env bash

if [[ ! $USER == root ]]
then
    die "Needs root permissions to run"
    exit 1
fi

action="skip"

while [[ $# -gt 0 ]]
do
    arg=$1
    shift
    case "$arg" in
       -r) action='restart' ;;
       -s) action='shut' ;;
    esac
done

pacman -Suy --noconfirm

command -v flatpak > /dev/null &&
flatpak update com.valvesoftware.Steam --noninteractive

case "$action" in
  restart) shutdown -r now ;;
  shut) shutdown now ;;
  *) ;;
esac
