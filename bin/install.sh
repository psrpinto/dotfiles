#!/usr/bin/env bash

# create links from home directory
ln -sf $PWD ~/.dotfiles

ln -sf ~/.dotfiles/bash/bash_logout ~/.bash_logout
ln -sf ~/.dotfiles/bash/bash_profile ~/.bash_profile
ln -sf ~/.dotfiles/bash/bashrc ~/.bashrc

sudo apt-get install zsh
chsh -s $(which zsh) `whoami`
ln -sf ~/.dotfiles/my-oh-zsh ~/.oh-my-zsh
ln -sf ~/.dotfiles/my-oh-zsh/custom/zshrc ~/.zshrc
ln -sf ~/.dotfiles/my-oh-zsh/custom/zshenv ~/.zshenv

rm -rf ~/.gconf/apps/gnome-terminal
ln -sf ~/.dotfiles/gnome-terminal ~/.gconf/apps/gnome-terminal

rmdir ~/.config/sublime-text-3/Packages/User
ln -sf ~/.dotfiles/sublime-text ~/.config/sublime-text-3/Packages/User

ln -sf ~/.dotfiles/gitconfig  ~/.gitconfig

mkdir .ssh
ln -sf ~/.dotfiles/sshconfig ~/.ssh/config

mkdir ~/.npm-packages
ln -sf ~/.dotfiles/npmrc ~/.npmrc
ln -sf ~/.dotfiles/npmconfig ~/.npmconfig

# install fonts
mkdir -p ~/.fonts
cp -f fonts/SourceCodePro_FontsOnly-1.013/OTF/*.otf ~/.fonts/
cp -f fonts/Monaco_Linux.ttf ~/.fonts/
fc-cache -f -v

# PHP development
sudo apt-get install curl
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

composer global require fabpot/php-cs-fixer
export PATH="$PATH:$HOME/.composer/vendor/bin"
