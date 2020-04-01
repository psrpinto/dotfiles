#!/usr/bin/env zsh

PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Darwin" ]]; then
  # Always open everything in Finder's list view
  defaults write com.apple.Finder FXPreferredViewStyle Nlsv

  # Show the ~/Library folder
  chflags nohidden ~/Library
fi
