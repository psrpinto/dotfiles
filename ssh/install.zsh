#!/usr/bin/env zsh

PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Darwin" ]]; then
  brew install openssh
fi

mkdir -p ~/.ssh
ln -sf ~/.dotfiles/ssh/sshconfig ~/.ssh/config
ln -sfh ~/.dotfiles/ssh/config.d ~/.ssh/config.d

touch ~/.ssh/config.d/hosts
