#export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH="$HOME/.pyenv/bin:$HOME/.pyenv/shims:$PATH"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
