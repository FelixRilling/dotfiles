# Core
autoload -Uz promptinit
promptinit
prompt adam1

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt autocd sharehistory histignorealldups
bindkey -e

# Completion
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit

# Custom
if [ -f ~/.oh-my-zsh-profile ]; then
    source ~/.oh-my-zsh-profile
fi

source ~/.profile

if [ -f ~/.secret/.profile ]; then
    source ~/.secret/.profile
fi
