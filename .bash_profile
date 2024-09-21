export BASH_SILENCE_DEPRECATION_WARNING=1

PATH="$HOME/bin:$PATH"
if [ -d "$HOME/.toolbox" ]; then
   PATH="$PATH:$HOME/.toolbox/bin"
fi
export PATH

export PYTHONPATH="$HOME/bin:$PYTHONPATH"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/amazon-corretto-21.jdk/Contents/Home"

source "$HOME/.bashrc"
