# Load Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Pipewire stuff - I don't know what I'm doing
/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/pipewire-media-session &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Keyboard
# setxkbmap -layout us,br  -option grp:ctrl_space_toggle
setxkbmap -layout us -variant altgr-intl

# Start i3wm
exec i3
