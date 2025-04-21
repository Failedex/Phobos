#!/usr/bin/bash

swaymsg output '*' bg '#C0C8CA' solid_color
swaymsg default_border pixel 2
swaymsg default_floating_border pixel 2
swaymsg corner_radius 0

BGCOLOR="#1A2D42"
INACTIVEBGCOLOR="#2E4156"
TEXTCOLOR="#C0C8CA"
INACTIVETEXTCOLOR="#C0C8CA"
URGENTBGCOLOR="#b4637a"

swaymsg client.focused          $BGCOLOR           $BGCOLOR          $TEXTCOLOR          $BGCOLOR 
swaymsg client.unfocused        $INACTIVEBGCOLOR $INACTIVEBGCOLOR $INACTIVETEXTCOLOR  $INACTIVEBGCOLOR
swaymsg client.focused_inactive $INACTIVEBGCOLOR $INACTIVEBGCOLOR $INACTIVETEXTCOLOR  $INACTIVEBGCOLOR
swaymsg client.urgent           $URGENTBGCOLOR    $URGENTBGCOLOR   $TEXTCOLOR          $URGENTBGCOLOR

swaymsg bindsym Mod4+d exec "eww -c ~/.config/eww/phobos update revealbar=1 & ~/.config/eww/phobos/scripts/hackslide.sh launcherint &"

for i in {1..5}
do 
    swaymsg bindsym Mod4+$i exec "~/.config/eww/phobos/scripts/wsswitch.sh $i"
done

eww -c ./ open-many topbar bottombar notifypopup barslide 
