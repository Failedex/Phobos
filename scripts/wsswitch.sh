#!/usr/bin/bash

PWD="$HOME/.config/eww/phobos"
COUNTER="/tmp/.wscounter"

if [[ ! -f $COUNTER ]]; then 
    touch $COUNTER
    echo '0' > $COUNTER
fi

swaymsg workspace number $1 &

check_eww () {
    if [[ ! $(eww -c $PWD ping) ]]; then 
        exit 0
    fi

    if [[ $(eww -c $PWD get revealtasklist) == true ]]; then 
        exit 0
    fi
}

check_eww
STAT=$(cat $COUNTER)

if [[ $STAT == 0 ]]; then 
    $PWD/scripts/hackslide.sh wsosd
fi

STAT=$(($STAT + 1))
echo $STAT > $COUNTER 

sleep 2

STAT=$(cat $COUNTER)
STAT=$(($STAT - 1))
echo $STAT > $COUNTER
if [[ $STAT == 0 ]]; then 
    $PWD/scripts/hackslide.sh wsosd close
fi
