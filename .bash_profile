if [ -f ~/.profile ]; then
  source ~/.profile
fi

export EDITOR="vim"

# NPM packages
export PATH="$HOME/.npm/packages/bin:$PATH"

# Homebrew python
export PATH="$(brew --prefix)/opt/python/libexec/bin:$PATH"

# Netlify's Git Credential Helper
if [ -f "/Users/$(whoami)/.netlify/helper/path.zsh.inc" ]; then source "/Users/$(whoami)/.netlify/helper/path.zsh.inc"; fi

# Rust crates
source "$HOME/.cargo/env"
