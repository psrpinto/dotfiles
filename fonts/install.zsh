#!/usr/bin/env zsh

PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Linux" ]]; then
  if [[ -a ~/.fonts/SourceCodePro-Black.ttf ]]; then
    exit
  fi
fi

if [[ "$PLATFORM" == "Darwin" ]]; then
 if [[ -a ~/Library/Fonts/SourceCodePro-Black.ttf ]]; then
    exit
 fi
fi

TARBALL_URL="https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.tar.gz"

curl -L $TARBALL_URL | tar xzf -

if [[ "$PLATFORM" == "Linux" ]]; then
  mkdir -p ~/.fonts
  cp -f source-code-pro-*/TTF/* ~/.fonts/
  cp -f fonts/Monaco_Linux.ttf ~/.fonts/
  fc-cache -f -v
fi

if [[ "$PLATFORM" == "Darwin" ]]; then
  cp -f source-code-pro-*/TTF/* ~/Library/Fonts/
fi

rm -rf source-code-pro-*
