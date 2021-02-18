if [ -f ~/.profile ]; then
  source ~/.profile
fi

export EDITOR="vim"

NPM_PACKAGES="$HOME/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
export PATH="$NPM_PACKAGES/bin:$PATH"

# export PATH="/usr/local/sbin:$PATH"

# use Homebrew python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

#export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
#export ANDROID_HOME=$HOME/Library/Android/sdk
#export PATH=$PATH:$ANDROID_HOME/emulator
#export PATH=$PATH:$ANDROID_HOME/tools
#export PATH=$PATH:$ANDROID_HOME/tools/bin
#export PATH=$PATH:$ANDROID_HOME/platform-tools

#export PATH="/usr/local/opt/e2fsprogs/bin:$PATH"
#export PATH="/usr/local/opt/e2fsprogs/sbin:$PATH"
#export PATH="/usr/local/opt/dosfstools/sbin:$PATH"

# The next line updates PATH for Netlify's Git Credential Helper.
if [ -f "/Users/$(whoami)/.netlify/helper/path.zsh.inc" ]; then source "/Users/$(whoami)/.netlify/helper/path.zsh.inc"; fi

# eval "$(rbenv init -)"
source "$HOME/.cargo/env"
