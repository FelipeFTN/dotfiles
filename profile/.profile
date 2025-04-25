export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export BROWSER=/usr/bin/firefox
export EDITOR=/usr/bin/nano
export VISUAL=nvim
export EDITOR=nvim

# Start Hyprland
if uwsm check may-start && uwsm select; then
  exec uwsm start default
fi

# if uwsm check may-start; then
#     exec uwsm start hyprland.desktop
# fi
