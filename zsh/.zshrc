export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git tmux)

source $ZSH/oh-my-zsh.sh

# Pywal - Color Schemes
#
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
### (cat ~/.cache/wal/sequences &)
#
# Alternative (blocks terminal for 0-3ms)
### cat ~/.cache/wal/sequences
#
# To add support for TTYs this line can be optionally added.
### source ~/.cache/wal/colors-tty.sh

# Use TMUX
if [ "$TMUX" = "" ]; then ta; fi

# MySecurity
alias mysecurity="sudo ./Desktop/MySecurity/bin/MySecurity"

# Dotfiles
alias dotfiles="cd ~/dotfiles/ && nvim ~/dotfiles"

# Neovim config
alias dotnvim="cd ~/dotfiles/nvim/.config/nvim && nvim ."

# i3 setup
alias doti3='cd ~/.config/i3 && nvim ~/.config/i3/config'

# zsh config
alias dotzsh='cd ~/ && nvim ~/.zshrc'

# Ripgrep files
alias rgf='rg --files | rg -i '

# Text Editor
export EDITOR="nvim"
export VISUAL="nvim"

# Ruby Gem
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

# Export bin PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Go PATH
export PATH=$PATH:/usr/local/go/bin

# Rust
export PATH="$PATH:$HOME/.cargo/env"

# XTerm-256color
export TERM="xterm-256color"
