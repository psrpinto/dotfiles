#!/usr/bin/env bash

# install ZSH and set it as default
sudo apt-get install zsh
chsh -s $(which zsh) `whoami`

# create links from home directory
ln -sf $PWD ~/.dotfiles
ln -sf ~/.dotfiles/bash/bash_logout ~/.bash_logout
ln -sf ~/.dotfiles/bash/bash_profile ~/.bash_profile
ln -sf ~/.dotfiles/bash/bashrc ~/.bashrc
ln -sf ~/.dotfiles/gitconfig  ~/.gitconfig
ln -sf ~/.dotfiles/my-oh-zsh ~/.oh-my-zsh
ln -sf ~/.dotfiles/my-oh-zsh/custom/zshrc ~/.zshrc
ln -sf ~/.dotfiles/my-oh-zsh/custom/zshenv ~/.zshenv
ln -sf ~/.dotfiles/gnome-terminal/Regularjack ~/.gconf/apps/gnome-terminal/profiles/Regularjack

# install fonts
mkdir -p ~/.fonts
cp -f fonts/SourceCodePro_FontsOnly-1.013/OTF/*.otf ~/.fonts/
cp -f fonts/Monaco_Linux.ttf ~/.fonts/
fc-cache -f -v
