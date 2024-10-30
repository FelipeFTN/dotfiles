export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

# Installation: git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  setxkbmap -layout us -variant altgr-intl
fi

# Use TMUX
# if [ "$TMUX" = "" ]; then tmux; fi
if [ -t 0 ] && [[ -z $TMUX ]] && [[ $- = *i* ]]; then exec tmux; fi

# MySecurity
alias mysecurity="sudo ./Desktop/MySecurity/bin/MySecurity"

# Dotfiles
alias dotfiles="cd ~/dotfiles/ && nvim ~/dotfiles"

# Neovim config
alias dotnvim="cd ~/dotfiles/nvim/.config/nvim && nvim ."

# i3 setup
alias doti3="cd ~/.config/i3 && nvim ~/.config/i3/config"

# zsh config
alias dotzsh="cd ~/ && nvim ~/.zshrc"

# cbonsai
alias ctree="cbonsai --seed 119 --live --infinite --base 2"

# Get help with linux commands
alias help="compgen -c | fzf | xargs man"

# Get my most used commands
# alias stories="history | awk '{print $2}' | sort | uniq -c | sort -nr | head -10"

# Open files in Neovim
alias nf="fd --type f | fzf -m --exact | xargs n"

# Commit GPT
alias cgpt='git commit -m "$(commitgpt)"'

# List file size with device usage
alias lsize="du -ah | head"

# Work directory
alias work="cd ~/Desktop/Work/"

# Memos note taking
alias memos="docker run -d --name memos -p 5230:5230 -v ~/.memos/:/var/opt/memos neosmemo/memos:stable"

# Text Editor
export EDITOR="nvim"
export VISUAL="nvim"

# Ruby Gem
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

# Export bin PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Go PATH
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin
export GOPATH=$HOME/go

# Rust
export PATH="$PATH:$HOME/.cargo/env"
export PATH="$PATH:$HOME/.cargo/bin"

# XTerm-256color
export TERM="xterm-256color"
eval "$(zoxide init zsh)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/felipe.tenorio/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/felipe.tenorio/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/felipe.tenorio/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/felipe.tenorio/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
