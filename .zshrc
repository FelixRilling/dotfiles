HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# Fewer cds. Heh.
setopt autocd
# No globberin' time.
unsetopt extendedglob
# we dont want duplicate entries.
setopt hist_ignore_all_dups 
# Use vi keybinds.
bindkey -v
# Rebind reverse search as it is unbound in vi mode.
bindkey "^R" history-incremental-search-backward

zstyle :compinstall filename '/home/rilling/.zshrc'
autoload -Uz compinit promptinit
compinit
promptinit

# Arrow-key driven interface for completion.
zstyle ':completion:*' menu select

# Use adam1 prompt theme.
prompt adam1

# Loading of custom scripts.
if [ -f ~/.zsh_plugins ]; then
    source ~/.zsh_plugins
fi
source ~/.profile
if [ -f ~/.secret/.profile ]; then
    source ~/.secret/.profile
fi
