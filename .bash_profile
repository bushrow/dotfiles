# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/bash_profile.pre.bash" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/bash_profile.pre.bash"
export BASH_SILENCE_DEPRECATION_WARNING=1

PATH="$HOME/bin:$PATH"
if [ -d "$HOME/.toolbox" ]; then
   PATH="$PATH:$HOME/.toolbox/bin"
fi
export PATH

export AWS_DEFAULT_REGION="us-east-1"
export GIT_DISCOVERY_ACROSS_FILESYSTEM=true
export PYTHONPATH="$HOME/bin:$PYTHONPATH"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/amazon-corretto-21.jdk/Contents/Home"

source "$HOME/.bashrc"

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/bash_profile.post.bash" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/bash_profile.post.bash"
