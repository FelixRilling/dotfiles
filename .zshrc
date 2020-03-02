# Core
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

autoload -Uz promptinit compinit
compinit
promptinit



# Main options
# less cds
setopt autocd 
# I never intentionally use this (yet)
setopt no_glob 
# share history among instances, but we dont want duplicate entries
setopt share_history hist_ignore_all_dups 
# Use vi keybinds
bindkey -v
# Rebind rev search as it is unbound in vi mode
bindkey "^R" history-incremental-search-backward
# Arrow-key driven interface for completion
zstyle ':completion:*' menu select
# Use adam1 prompt theme
prompt adam1



# Loading of custom scripts
if [ -f ~/.zsh_plugins ]; then
    source ~/.zsh_plugins
fi

source ~/.profile

if [ -f ~/.secret/.profile ]; then
    source ~/.secret/.profile
fi
