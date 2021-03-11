export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

source ~/.aliases

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

eval "$(starship init bash)"
