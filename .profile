# Plugins
## Oh-My-Zsh
source ~/.local/share/oh-my-zsh/plugins/archlinux/archlinux.plugin.zsh 
source ~/.local/share/oh-my-zsh/plugins/git/git.plugin.zsh 
source ~/.local/share/oh-my-zsh/plugins/colored-man-pages/colored-man-pages.plugin.zsh 



# Variables
export EDITOR='vim'
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_QPA_PLATFORM=wayland-egl
export PATH=~/.npm-global/bin:$PATH
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk/
#export MOZ_ENABLE_WAYLAND=1



# Alias
## System Utils
alias zshy="source ~/.zshrc"
alias ll="ls -la --color"
alias nordvpn="sudo openvpn /etc/openvpn/client/nordvpn.conf"
alias upd="yay -Syu &&  npm upgrade -g"
alias todo="vim ~/personal/sync/docs/todo/todo.txt"

## Development Utils
alias nprm="rm -rf node_modules package-lock.json"
alias npls="npm -g ls --depth=0"
alias npmo="npm outdated"
alias npp="np --no-yarn --no-cleanup"



# Autostart
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec sway
fi
