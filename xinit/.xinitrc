# Load Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Keyboard
# setxkbmap -layout us,br  -option grp:ctrl_space_toggle
setxkbmap -layout us -variant altgr-intl

# Start i3wm
exec i3
