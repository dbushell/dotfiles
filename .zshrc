# ~/.zshrc

source ~/.bash_profile

export HISTSIZE=10000
export SAVEHIST=10000

export HISTFILE=~/.zsh_history

export EDITOR=vim

# NPM packages
export NPM_PACKAGES="$HOME/.npm/packages"
export PATH="$NPM_PACKAGES/bin:$PATH"

# Bun packages
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Deno packages
export PATH="$HOME/.deno/bin:$PATH"

# Homebrew python
export PATH="$(brew --prefix)/opt/python/libexec/bin:$PATH"

# Netlify's Git Credential Helper
if [ -f "$HOME/.netlify/helper/path.zsh.inc" ]; then
  source "$HOME/.netlify/helper/path.zsh.inc";
fi

# Rust cargo crates
if [ -f "$HOME/.cargo/env" ]; then
  source "$HOME/.cargo/env"
fi

export DO_NOT_TRACK=1

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_BEEP

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

alias glol="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"

alias docker-compose="docker compose"

eval "$(starship init zsh)"
