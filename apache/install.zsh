#!/usr/bin/env zsh

PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Linux" ]]; then
  echo 'Apache installation on Linux not implemented yet'
  return
fi

sudo apachectl stop
sudo launchctl unload -w /System/Library/LaunchDaemons/org.apache.httpd.plist 2>/dev/null

brew tap homebrew/apache
brew install -v httpd24

# Comment out PHP5
sed -i -e '/.*php5_module.*/ s/^#*/#/' /usr/local/etc/apache2/2.4/httpd.conf

# Enable mod_rewrite
sed -i -e '/^#LoadModule rewrite_module.*/s/^#//' /usr/local/etc/apache2/2.4/httpd.conf

USER=`whoami`
CONFIG_FILE=/usr/local/etc/apache2/2.4/httpd.conf

# Set user and group
sed -i -e "s/^User.*/User $USER/" $CONFIG_FILE
sed -i -e "s/^Group.*/Group staff/" $CONFIG_FILE

# Setup custom vhosts
SITES_DIR=/Users/$USER/Sites/vhosts
mkdir $SITES_DIR
touch $SITES_DIR/default.conf
grep -q -F "Include $SITES_DIR/default.conf" $CONFIG_FILE || echo "Include $SITES_DIR/default.conf" >> $CONFIG_FILE

sudo apachectl start
