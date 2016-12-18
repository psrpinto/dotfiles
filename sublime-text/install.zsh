#!/usr/bin/env zsh

PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Linux" ]]; then
  ln -sf ~/.dotfiles/sublime-text/User ~/.config/sublime-text-3/Packages/User
fi

if [[ "$PLATFORM" == "Darwin" ]]; then
  brew cask install sublime-text
  ln -sfh ~/.dotfiles/sublime-text/User ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
fi
