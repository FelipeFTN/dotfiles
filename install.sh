#!/bin/bash

echo "We will need a lot of permissions..."
function check_sudo() {
if [[ "$EUID" = 0 ]]; then
    echo "(1) already root"
else
    sudo -k
    if sudo true; then
        echo "(2) correct password"
    else
        echo "(3) wrong password"
        exit 1
    fi
fi
}
check_sudo

function get_current_directory() {
    SOURCE=${BASH_SOURCE[0]}
    while [ -L "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
        DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
	SOURCE=$(readlink "$SOURCE")
        [[ $SOURCE != /* ]] && SOURCE=$DIR/$SOURCE # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
    done
    DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
    echo "$DIR"
}
current_dir="$(get_current_directory)"

echo "Sending all dotfiles to their home"
echo "$current_dir"
sudo ln -s $current_dir/nvim ~/.config/
sudo ln -s $current_dir/alacritty ~/.config/
sudo cp -a $current_dir/grub/themes/* /boot/grub/themes/

read -p "Press enter to install NeoVim Stuff"

echo "Installing NeoVim Stuff..."
    # Install Packer - package manager
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

read -p "Press enter to install other stuffs"
    # Install some requirements
    # Arch based systems only.
sudo pacman -Sy fd ripgrep python python-virtualenv

echo "All done! You're ready to rock!"
