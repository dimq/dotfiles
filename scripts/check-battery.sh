#!/bin/bash

BAT_NAME="BAT0"
FULL_ALREADY_SEND=0
LESS_ALREADY_SEND=0

MIN_PERCENT=10
MAX_PERCENT=99

while true
do
  PERCENT=$(cat /sys/class/power_supply/$BAT_NAME/capacity)
  if [ ${PERCENT} -eq ${MAX_PERCENT} ]
  then
    if [ ${FULL_ALREADY_SEND} -eq 0 ]
    then
      FULL_ALREADY_SEND=1
      notify-send "Battery status" "Battery up to 100%" -i battery-level-100-symbolic.symbolic -u normal
    fi
  elif [[ ${PERCENT} -lt ${MIN_PERCENT} ]]
  then
    if [ ${LESS_ALREADY_SEND} -eq 0 ]
    then
      LESS_ALREADY_SEND=1
      notify-send  "Battery status" "Be careful! You have ${PERCENT}% battery left!" -i battery-level-10-symbolic.symbolic -u critical
    fi
  else
    FULL_ALREADY_SEND=0
    LESS_ALREADY_SEND=0
  fi
  sleep 10
done
