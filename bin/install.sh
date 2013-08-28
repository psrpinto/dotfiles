#!/usr/bin/env bash

# fonts
mkdir -p ~/.fonts
cp -f fonts/SourceCodePro_FontsOnly-1.013/OTF/*.otf ~/.fonts/
cp -f fonts/Monaco_Linux.ttf ~/.fonts/
fc-cache -f -v

# TODO
