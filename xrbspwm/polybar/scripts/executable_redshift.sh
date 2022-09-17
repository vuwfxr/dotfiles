#!/bin/bash
if pgrep -x "redshift" > /dev/null
then
  killall redshift
  redshift
  notify-send "Redshift" "Redshift Restart"
else
  redshift
  notify-send "Redshift" "Redshift Start"
fi

