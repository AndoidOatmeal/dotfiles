#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

readonly DOTFILES=~/dotfiles

link() {
  local file="$1"
  target=~/.$file
  if [ -f $target ]; then
    echo "Moving $target"
    target_rename="${target}_old"
    mv -fv "$target" "$target_rename"
  fi

  echo "Linking dotfile $file -> $target"
  ln -s "$DOTFILES/$file" "$target"
}


link gitconfig
link githelpers
link gitignore_global
link tmux.conf
link vimrc
link zshrc
