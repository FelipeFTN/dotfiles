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
alias mysecret="ruby ~/Desktop/MySecret/main.rb"

# MySecurity
alias mysecurity="sudo ./Desktop/MySecurity/bin/MySecurity"

export EDITOR="/usr/bin/nvim"
export VISUAL="/usr/bin/nvim"
