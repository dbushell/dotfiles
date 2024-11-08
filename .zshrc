# ~/.zshrc

export DO_NOT_TRACK=1
export HOMEBREW_NO_ANALYTICS=1
export DISABLE_BUN_ANALYTICS=1

export EDITOR=vim

export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

# Homebrew python
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$(brew --prefix)/opt/python/libexec/bin:$PATH"

# NPM packages
export NPM_PACKAGES="$HOME/.npm/packages"
export PATH="$NPM_PACKAGES/bin:$PATH"

# Bun packages
export BUN_PACKAGES="$HOME/.bun"
export PATH="$BUN_PACKAGES/bin:$PATH"

# Deno packages
export PATH="$HOME/.deno/bin:$PATH"

# Go packages
export PATH="$HOME/go/bin:$PATH"

# Rust cargo crates
if [ -f "$HOME/.cargo/env" ]; then
  source "$HOME/.cargo/env"
fi

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

alias glol="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset %C(dim)(%G? %GS)%Creset'"

alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

alias docker-compose="docker compose"

if [[ "$TERM" == "xterm-kitty" ]]; then
  alias ssh="kitty +kitten ssh"
fi

eval "$(starship init zsh)"

alias vvim="/usr/bin/vim"
alias vim="/opt/homebrew/bin/nvim"

source "$HOME/.zshrc_private"
