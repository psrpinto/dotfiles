#!/usr/bin/env zsh

PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Darwin" ]]; then
  brew install node
fi

mkdir -p ~/.npm
ln -sfh ~/.dotfiles/node/npmrc ~/.npmrc
