#!/bin/zsh

# Test for homebrew installation
if test ! $(which brew)
then
  echo "Installing homebrew .."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Which apps to install
apps=(
    coreutils
    tree
    git
    python3
    tmux
    neovim
    tldr
    jq
    cmake
    ffmpeg
    wget
)

# Upgrade & Install
brew update 
brew upgrade
brew install "${apps[@]}"

