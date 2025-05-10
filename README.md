# PHOBOS

Was originally trying to make [this pixel art](https://x.com/Arvydas_B/status/1307207015303974912) a real thing, but then I got side tracked by many other things and ideas. 

https://github.com/user-attachments/assets/055910e9-8c4c-4d2f-90ad-36058576cb92

This rice heavily utilizes triangles, which is not often seen in many other rices. Do check out how it was done, because it would be cool to see this idea in other rices.

## Tools used
- Compositor: sway/swayfx
- Bar: eww
- Font: FairFaxHD

### Other dependencies
- playerctl
- python i3ipc, dbus, gobject
- pamixer
- brightnessctl
- nmcli
- bluetoothctl

If there are other things missing, I'm sure you can figure it out. Good luck.

## Installation

> [!WARNING]
> These dotfiles are untested and may not work on other devices. 
> It's safer to use this as a reference.

1. Clone the repo under `~/.config/eww/phobos`
```
mkdir -p ~/.config/eww
git clone https://github.com/Failedex/Phobos ~/.config/eww/phobos
```
2. Refer to start.sh to get an idea of how you run the config. Modify and use the code snippets to your liking. Add them somewhere to start them automatically.

## Trivia 
- The colorscheme looks like solarized, but it isn't. I actually stole the colours from a palette provided by a friend.
- The version numbers aren't random, I increment them accordingly based on features and changes made, and I have a screenshot of each version in the past. I didn't do this because I was a good developer or anything, I just thought it would be fun :P
- Notifications exist, but were never showcased because there were minor padding issues I didn't fix.
- Somewhere in the config is 57 digits of pi. Yes it is important.
