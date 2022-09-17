#!/bin/bash

# launch dunst daemon
if [[ `pidof dunst ` ]]; then
  pkill dunst
fi

dunst -config ~/dotfiles/xrdwm/dunstrc &
