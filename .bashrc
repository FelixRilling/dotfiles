# No history file
export HISTFILESIZE=0
unset HISTFILE

# Completion
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi



# Custom
source ~/.profile

if [ -f ~/.secret/.profile ]; then
    source ~/.secret/.profile
fi
