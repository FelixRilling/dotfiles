# Variables
export EDITOR='vim'
export PATH=~/.npm-global/bin:$PATH
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk/
export JDK_HOME=/usr/lib/jvm/java-11-openjdk/



# Alias
## System Utils
alias zshy="source ~/.zshrc"
alias ll="ls -la --color"

## Misc
alias todo="vim ~/personal/sync/docs/todo/todo.txt"
alias upd="yay -Syu &&  npm upgrade -g"
alias nordvpn="sudo openvpn /etc/openvpn/client/nordvpn.conf"
alias syncthing-tunnel="ssh -N -L 9090:127.0.0.1:8384 felix@rilling.dev"

## Development Utils
alias nprm="rm -rf node_modules package-lock.json"
alias npls="npm -g ls --depth=0"
alias npmo="npm outdated"
alias npp="np --no-yarn --no-cleanup"
