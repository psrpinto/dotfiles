#!/usr/bin/env bash

PLATFORM=$(uname -s)

ln -sfh $PWD ~/.dotfiles

if [[ "$PLATFORM" == "Linux" ]]; then
  sudo apt-get install zsh curl
fi

if [[ "$SHELL" != "/bin/zsh" ]]; then
  chsh -s $(which zsh) `whoami`
fi

# find the installers and run them iteratively
find . -name install.zsh | while read installer ; do echo "Running $installer"; sh -c "${installer}" ; done
