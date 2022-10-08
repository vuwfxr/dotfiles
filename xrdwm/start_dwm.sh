#!/bin/bash

# kill already running process

_ps=(picom dunst mpd ksuperkey xfce-polkit xfce4-power-manager)
for _prs in "${_ps[@]}"; do
  if [[ `pidof ${_prs}` ]]; then
    killall -9 ${_prs}
  fi
done

# fix cursor
xsetroot -cursor_name left_ptr

# Polkit agent
/usr/lib/xfce-polkit/xfce-polkit &

# enable power manager
xfce4-power-manager &

# enable super key (win) for menu
ksuperkey -e 'Super_L=Alt_L|F1' &

# set wallpaper
feh --bg-fill ~/Pictures/wallpapers/forest.jpg

# launch notification daemon (dunst)
~/dotfiles/xrdwm/scripts/notificaton.sh

# launch dwm bar
if pgrep -u $USER bar.sh > /dev/null;
then
  pkill -u $USER bar.sh
fi
~/dotfiles/xrdwm/scripts/bar.sh &

# launch compositor (picom)
~/dotfiles/xrdwm/scripts/picom.sh

# typematic delay and rate
# xet r rate 200 50 &

# start mpd
mpd &

# start fcitx
fcitx5 &

# fix Java problems
wmname "LG3D"
export _JAVA_AWT_WM_NONREPARENING=1

[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
## add other autostart script & programs

##

# last, launch dwm
while dwm; [ $? -ne 0 ]; do echo "start dwm"; done

