#!/usr/bin/env zsh

PLATFORM=$(uname -s)

if [[ "$PLATFORM" != "Darwin" ]]; then
  return
fi

if ! (( $+commands[brew] )); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  brew update
fi

brew bundle --file=homebrew/Brewfile
