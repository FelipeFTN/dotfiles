## Manjaro's Stuff

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

## End Manjaro's Stuff

# Use TMUX
if [ "$TMUX" = "" ]; then tmux; fi

# MySecret
# alias mysecret="ruby ~/Desktop/MySecret/main.rb"

# MySecurity
alias mysecurity="sudo ./Desktop/MySecurity/bin/MySecurity"

# Dotfiles
alias dotfiles="cd ~/dotfiles/ && nvim ~/dotfiles"

# Text Editor
export EDITOR="nvim"
export VISUAL="nvim"

# Ruby Gem
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

# Rust
export PATH="$PATH:$HOME/.cargo/env"
