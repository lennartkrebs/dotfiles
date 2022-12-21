#!/bin/zsh

# Get the emsdk repo
git clone https://github.com/emscripten-core/emsdk.git $HOME/emsdk

# Enter that directory
cd $HOME/emsdk

# Fetch the latest version of the emsdk (not needed the first time you clone)
git pull

# Download and install the latest SDK tools.
./emsdk install latest

# Make the "latest" SDK "active" for the current user. (writes .emscripten file)
./emsdk activate latest
