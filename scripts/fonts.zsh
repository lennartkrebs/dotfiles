#!/bin/zsh

# Download powerline fonts
echo "Installing powerline fonts.."
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
zsh install.sh
cd ..
rm -rf fonts

echo "Installing some nerd fonts.."
# Install favorite nerd fonts
brew tap homebrew/cask-fonts

# Specify fonts
fonts=(
    font-hack-nerd-font
    font-agave-nerd-font
    font-anonymice-nerd-font
    font-fira-code-nerd-font
    font-jetbrains-mono-nerd-font
    font-mononoki-nerd-font
    font-ubuntu-nerd-font
    font-ubuntu-mono-nerd-font
)

brew install --cask "${fonts[@]}"
