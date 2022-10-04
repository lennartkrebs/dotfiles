#!/bin/zsh
# forked -> http://mths.be/osx

# Admin access
sudo -v

# Set names
sudo scutil --set ComputerName "Lennarts-MBP"
sudo scutil --set HostName "Lennarts-MBP"
sudo scutil --set LocalHostName "Lennarts-MBP"

# Disable startup sound
sudo nvram SystemAudioVolume=" "

# Menu bar: hide the useless Time Machine and Volume icons
defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" "/System/Library/CoreServices/Menu Extras/AirPort.menu" "/System/Library/CoreServices/Menu Extras/Battery.menu" "/System/Library/CoreServices/Menu Extras/Clock.menu"

# Set highlight color to yellow
defaults write -g AppleHighlightColor -string "1.000000 0.937255 0.690196"

# Disable opening and closing window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true






