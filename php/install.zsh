#!/usr/bin/env zsh

PLATFORM=$(uname -s)

if [[ ! -a bin/composer ]]; then
  curl -sS https://getcomposer.org/installer | php -- --install-dir=bin --filename=composer
else
  composer self-update
fi

mkdir -p ~/.composer
ln -sfh ~/.dotfiles/php/composer.json ~/.composer/composer.json

composer global update --prefer-dist

# wp-cli fails to install with composer due to incompatible dependencies
if [[ ! -a bin/wp ]]; then
  curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
  chmod +x wp-cli.phar
  mv wp-cli.phar bin/wp
fi
