#!/usr/bin/env zsh

if [[ ! -d ~/.oh-my-zsh ]]; then
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

ln -sfh ~/.dotfiles/zsh/zshrc ~/.zshrc
ln -sfh ~/.dotfiles/zsh/zshenv ~/.zshenv
