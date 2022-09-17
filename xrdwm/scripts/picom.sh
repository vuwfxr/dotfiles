#!/bin/bash

if [[ `pidof picom` ]]; then
  pkill picom
fi

# wait until the processes have been shutdown
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done


# launch picom (ibhagwan's picom)
picom --config ~/dotfiles/xrdwm/picom.conf &
