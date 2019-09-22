# Core
autoload -Uz promptinit
promptinit
prompt adam1

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

setopt zle autocd sharehistory histignorealldups
bindkey -v

# Completion
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit

# Custom
if [ -f ~/.zsh_plugins ]; then
    source ~/.zsh_plugins
fi

source ~/.profile

if [ -f ~/.secret/.profile ]; then
    source ~/.secret/.profile
fi
