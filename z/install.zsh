#!/usr/bin/env zsh

if [[ ! -d ~/.z-source ]]; then
  sh -c "$(git clone https://github.com/rupa/z.git ~/.z-source)"
fi
