#!/usr/bin/env zsh

PLATFORM=$(uname -s)

rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
ln -sh ~/.dotfiles/sublime-text/User ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

for dir in ~/.dotfiles/sublime-text/Overrides/*;
do
  ln -sFh $dir ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/$(basename $dir);
done
