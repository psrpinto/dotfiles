PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Darwin" ]]; then
  brew install postgresql
  brew cask install pgadmin3

  initdb /usr/local/var/postgres
  createdb `whoami`
fi
