#!/usr/bin/env zsh

PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Linux" ]]; then
  echo 'PHP installation on Linux not implemented yet'
  return
fi

brew tap homebrew/php

brew install php70 --with-postgresql --with-apache
brew install php70-xdebug php70-mcrypt

brew unlink php70
brew install php53 --with-postgresql --with-mysql --with-apache
brew install php53-xdebug php53-mcrypt

brew install xdebug-osx brew-php-switcher

brew-php-switcher 70

if [[ ! -a bin/composer ]]; then
  curl -sS https://getcomposer.org/installer | php -- --install-dir=bin --filename=composer
else
  composer self-update
fi

mkdir -p ~/.composer
ln -sf ~/.dotfiles/php/composer.json ~/.composer/composer.json

composer global update --prefer-dist

# wp-cli fails to install with composer due to incompatible dependencies
if [[ ! -a bin/wp ]]; then
  curl -LsS https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o bin/wp
  chmod +x bin/wp
fi

# symfony-install fails to install with composer due to incompatible dependencies
if [[ ! -a bin/symfony ]]; then
  curl -LsS https://symfony.com/installer -o bin/symfony
  chmod a+x bin/symfony
else
  symfony self-update
fi
