#!/bin/zsh

# Ask for admin pw to install homebrew
sudo -v 

# Check for homebrew
if ! which -s brew > /dev/null
then
    echo "Homebrew is not installed. Installing.."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "# Set PATH, MANPATH, etc., for Homebrew." >> $HOME/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Update, upgrade and install Brewfile
brew update
brew upgrade
brew bundle install --no-lock