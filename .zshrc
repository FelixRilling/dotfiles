# Core
autoload -Uz promptinit
promptinit
prompt adam1

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

setopt zle autocd sharehistory histignorealldups
bindkey -v

# Menu completion view
zstyle ':completion:*' menu select 

# Current-line-match history
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

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
