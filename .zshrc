# ~/.zshrc

source ~/.bash_profile

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

alias glol="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

eval "$(starship init zsh)"
