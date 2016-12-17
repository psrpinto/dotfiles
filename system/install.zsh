#!/usr/bin/env zsh

PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Darwin" ]]; then
  # Always open everything in Finder's list view
  defaults write com.apple.Finder FXPreferredViewStyle Nlsv

  # Show the ~/Library folder
  chflags nohidden ~/Library

  brew cask install java keka
fi

npm install nativefier -g

nativefier --fast-quit trello.com ~/Applications
nativefier --fast-quit --icon system/icons/devdocs.icns devdocs.io ~/Applications
