#!/usr/bin/env zsh

ln -sf ~/.dotfiles/git/gitconfig ~/.gitconfig

git config --global core.excludesfile '~/.dotfiles/git/gitignore'
