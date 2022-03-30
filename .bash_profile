export BASH_SILENCE_DEPRECATION_WARNING=1

PATH="$HOME/bin:$PATH"
PATH="$HOME/.pyenv/bin:$HOME/.pyenv/shims:$PATH"
if [ -d "$HOME/.toolbox" ]; then
   PATH="$PATH:$HOME/.toolbox/bin"
fi
export PATH

export PYTHONPATH="$HOME/bin:$PYTHONPATH"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export WORKON_HOME="$HOME/.virtualenvs"
export PROJECT_HOME="$HOME/Projects"
export VIRTUALENVWRAPPER_PYTHON="$HOME/.pyenv/shims/python"

source "$HOME/.pyenv/versions/$($VIRTUALENVWRAPPER_PYTHON -V 2>&1 | cut -d' ' -f2)/bin/virtualenvwrapper.sh"

[ -f /usr/local/etc/bash_completion ] && source "/usr/local/etc/bash_completion"
[ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"