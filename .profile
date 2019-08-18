# Shell plugins
## Load oh-my-zsh
source ~/.oh-my-zsh-profile

# Variables
export EDITOR='vim'
export PATH=~/.npm-global/bin:$PATH
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk/

# Alias
## System Utils
alias zshy="source ~/.zshrc"
alias ll="ls -la --color"
alias nordvpn="sudo openvpn /etc/openvpn/client/nordvpn.conf"

## Development Utils
alias nprm="rm -rf node_modules package-lock.json"
alias npls="npm -g ls --depth=0"
alias npp="np --no-yarn --no-cleanup"

