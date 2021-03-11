export BASH_SILENCE_DEPRECATION_WARNING=1

if command -v pyenv &>/dev/null; then
    eval "$(pyenv init -)"
fi
if command -v pyenv-virtualenv &>/dev/null; then
    eval "$(pyenv virtualenv-init -)"
fi


if [ $HOME = "/Users/bushrow" ]; then
    __conda_path="$HOME/miniforge3"
elif [ $HOME = "/Users/charlesbushrow" ]; then
    __conda_path="$HOME/miniconda3"
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$($__conda_path'/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$__conda_path/etc/profile.d/conda.sh" ]; then
        . "$__conda_path/etc/profile.d/conda.sh"
    else
        export PATH="$__conda_path/bin:$PATH"
    fi
fi
unset __conda_setup
unset __conda_path
# <<< conda initialize <<<

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
