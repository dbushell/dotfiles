# paths
NPM_PACKAGES="$HOME/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"

export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="/usr/local/git/bin:$PATH"
export PATH="$NPM_PACKAGES/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export EDITOR="vim"

eval "$(rbenv init -)"
