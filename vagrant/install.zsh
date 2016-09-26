#!/usr/bin/env zsh

PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Darwin" ]]; then
  brew cask install virtualbox vagrant
  vagrant plugin install vagrant-hostmanager vagrant-bindfs
fi
