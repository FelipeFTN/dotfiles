# Configs & DotFiles 🗂️
Just a personal repository to save some configuration files.
I created a simple Bash script that handles all the boring installation part for me. 😵<br>
You can run it by running ```$ sh install.sh```. _don't forget the sudo privileges._

## How dotfiles works? 🤓
In order to save my configuration files, I'm using stow, as a dotfiles manager.<br>
It can be applied by running: ```$ stow */```<br>

## Instalation ✨
Pretty simple...

 - `gnome-extensions.sh` --> Save my gnome extensions into a tar.gz file.
 - `install.sh` --> Must be executed as sudo, It will install everything I need.
 - `neovim.sh` --> Setup my neovim environment.
 - `ssh-key.sh` --> Generates a new SSH key (for GitHub).
