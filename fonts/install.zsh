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

TARBALL_URL=$(curl -s https://api.github.com/repos/adobe-fonts/source-code-pro/releases/latest | grep tarball_url | head -n 1 | cut -d '"' -f 4)

curl -L $TARBALL_URL | tar xvzf -

if [[ "$PLATFORM" == "Linux" ]]; then
  mkdir -p ~/.fonts
  cp -f adobe-fonts-source-code-pro-*/TTF/* ~/.fonts/
  cp -f fonts/Monaco_Linux.ttf ~/.fonts/
  fc-cache -f -v
fi

if [[ "$PLATFORM" == "Darwin" ]]; then
  cp -f adobe-fonts-source-code-pro-*/TTF/* ~/Library/Fonts/
fi

rm -rf adobe-fonts-source-code-pro-*
