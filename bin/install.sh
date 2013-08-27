#!/usr/bin/env bash

# fonts
mkdir -p ~/.fonts
cp fonts/SourceCodePro_FontsOnly-1.013/OTF/*.otf ~/.fonts/
fc-cache -f -v

# TODO
