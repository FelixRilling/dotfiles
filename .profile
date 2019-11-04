# Variables
# Core variables
export LANG="en_US.UTF-8"
export EDITOR="vim"

# Host specific variables
export PATH=~/.npm-global/bin:$PATH
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk/
export JDK_HOME=/usr/lib/jvm/java-11-openjdk/



# Alias
## System Utils
alias zshy="source ~/.zshrc"
alias ll="ls -la --color"

## Host specific variables
alias upd="yay -Syu && npm upgrade -g"
alias todo="vim ~/personal/sync/docs/todo/todo.txt"

## Development Utils
alias nprm="rm -rf node_modules package-lock.json"
alias npls="npm -g ls --depth=0"
alias npmo="npm outdated"
alias npp="np --no-yarn --no-cleanup"
