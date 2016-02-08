PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Darwin" ]]; then
  brew install mysql
  brew cask install mysqlworkbench
fi
