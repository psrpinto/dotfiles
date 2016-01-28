#!/usr/bin/env zsh

if [[ "$PLATFORM" == "Linux" ]]; then
  ln -sfh ~/.dotfiles/sublime-text ~/.config/sublime-text-3/Packages/User
fi

if [[ "$PLATFORM" == "Darwin" ]]; then
  ln -sfh ~/.dotfiles/sublime-text ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
fi
