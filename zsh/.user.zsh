#  Startup 
# Commands to execute on startup (before the prompt is shown)
# This is a good place to load graphic/ascii art, display system information, etc.

# fastfetch.sh
# if command -v fastfetch >/dev/null; then
#   fastfetch --logo arch
# fi

# Use TMUX
# if [ "$TMUX" = "" ]; then tmux; fi
if [ -t 0 ] && [[ -z $TMUX ]] && [[ $- = *i* ]]; then exec tmux; fi

#  Plugins 
plugins=(
    "sudo"
    "tmux"
    # "git"                     # (default)
    # "zsh-autosuggestions"     # (default)
    # "zsh-syntax-highlighting" # (default)
    # "zsh-completions"         # (default)
)
