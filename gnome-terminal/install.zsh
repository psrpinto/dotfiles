#!/usr/bin/env zsh

PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Linux" ]]; then
  rm -rf ~/.gconf/apps/gnome-terminal
  ln -sfh ~/.dotfiles/gnome-terminal ~/.gconf/apps/gnome-terminal
fi
