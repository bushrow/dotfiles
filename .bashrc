# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/bashrc.pre.bash" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/bashrc.pre.bash"
export HOMEBREW_NO_AUTO_UPDATE=1

if [ -f /usr/local/etc/bash_completion ]; then
   source /usr/local/etc/bash_completion
fi
if [ -f "$HOME/.iterm2_shell_integration.bash" ]; then
   source "$HOME/.iterm2_shell_integration.bash"
fi
if [ -f "$HOME/.brazil_completion/bash_completion" ]; then
   source "$HOME/.brazil_completion/bash_completion"
fi

source "$HOME/.aliases"
source "$HOME/.cargo/env"

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init bash)"
eval "$(/opt/homebrew/bin/mise activate bash)"

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/bashrc.post.bash" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/bashrc.post.bash"
