#!/usr/bin/bash

swaymsg output '*' bg '#C0C8CA' solid_color
swaymsg default_border pixel 2
swaymsg default_floating_border pixel 2
swaymsg corner_radius 0

BGCOLOR="#949494"
INACTIVEBGCOLOR="#949494"
TEXTCOLOR="#545454"
INACTIVETEXTCOLOR="#545454"
URGENTBGCOLOR="#d20f39"

swaymsg client.focused          $BGCOLOR           $BGCOLOR          $TEXTCOLOR          $BGCOLOR 
swaymsg client.unfocused        $INACTIVEBGCOLOR $INACTIVEBGCOLOR $INACTIVETEXTCOLOR  $INACTIVEBGCOLOR
swaymsg client.focused_inactive $INACTIVEBGCOLOR $INACTIVEBGCOLOR $INACTIVETEXTCOLOR  $INACTIVEBGCOLOR
swaymsg client.urgent           $URGENTBGCOLOR    $URGENTBGCOLOR   $TEXTCOLOR          $URGENTBGCOLOR

swaymsg bindsym Mod4+d exec "eww -c ~/.config/eww/phobos open-many launcher --toggle"

eww -c ./ open-many topbar bottombar notifypopup
