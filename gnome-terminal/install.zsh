#!/usr/bin/env zsh

PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Linux" ]]; then
  rm -rf ~/.gconf/apps/gnome-terminal
  ln -sf ~/.dotfiles/gnome-terminal ~/.gconf/apps/gnome-terminal
fi
