#!/bin/zsh

# Check for homebrew
if test -n "$(which brew)" ; then
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
fi

# Update, upgrade and install Brewfile
brew update;
brew upgrade;
brew bundle install --no-lock;