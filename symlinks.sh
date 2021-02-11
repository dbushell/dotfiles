#!/bin/zsh

DIR=$( cd $(dirname $0) ; pwd )

FILES=(
  ".bash_profile"
  ".zshrc"
  ".vimrc"
  ".gitconfig"
  ".gitignore"
)

RESET=$(printf " \e[m")
PINK=$(printf " \e[35m")
YELLOW=$(printf " \e[33m")

for FILE in "${FILES[@]}"
do
  echo -e "${YELLOW}$DIR/$FILE${RESET} ← ${PINK}~/$FILE"
  # if [ ! -f ~/$FILE ]; then
    ln -sfn $DIR/$FILE ~/$FILE
  # fi
done
