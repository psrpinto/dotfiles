PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Darwin" ]]; then
  brew install postgresql
  brew cask install pgadmin3

  brew services start postgres

  initdb /usr/local/var/postgres
  createdb `whoami`
fi
