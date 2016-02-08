PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Darwin" ]]; then
  brew install mysql
  brew cask install mysqlworkbench

  # mkdir -p ~/Library/LaunchAgents
  # ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
  # launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
fi
