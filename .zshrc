# Core
autoload -Uz promptinit compinit
compinit
promptinit

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# Main options
setopt autocd sharehistory histignorealldups
# Use vi keybinds
bindkey -v
# Rebind rev search as it is unbound in vi mode
bindkey "^R" history-incremental-search-backward

# Use adam1 prompt theme
prompt adam1



# Custom
if [ -f ~/.zsh_plugins ]; then
    source ~/.zsh_plugins
fi

source ~/.profile

if [ -f ~/.secret/.profile ]; then
    source ~/.secret/.profile
fi
