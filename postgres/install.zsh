PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Darwin" ]]; then
  brew install postgresql
  brew cask install pgadmin3

  # mkdir -p ~/Library/LaunchAgents
  # ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents/
  # launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

  initdb /usr/local/var/postgres
  createdb `whoami`
fi
