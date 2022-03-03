export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH="$HOME/.pyenv/bin:$HOME/.pyenv/shims:$PATH"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

if [ -f "$HOME/.bashrc" ]; then
   source "$HOME/.bashrc"
fi

export WORKON_HOME="$HOME/.virtualenvs"
export PROJECT_HOME="$HOME/Projects"
export VIRTUALENVWRAPPER_PYTHON="$HOME/.pyenv/shims/python"
source "$HOME/.pyenv/versions/$($VIRTUALENVWRAPPER_PYTHON -V 2>&1 | cut -d' ' -f2)/bin/virtualenvwrapper.sh"