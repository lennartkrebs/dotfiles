#!/bin/zsh

# Wipe all default applications from dock
defaults write com.apple.dock persistent-apps -array

# Specify desired apps
apps=(
    "Launchpad.app"
    "Google Chrome.app"
    "Visual Studio Code.app"
    "iTerm.app"
    "Bitwarden.app"
    "Spotify.app"
    "Mail.app"
    "System Preferences.app"
    "Slack.app"
    "Microsoft Outlook.app"
    "Todoist.app"
)

echo "Setting up dock.."

# Add applications to dock
for app in $apps 
do
    if open -Ra "$app" ; then
        app_name="<dict> <key>tile-data</key> <dict> <key>file-data</key> <dict> <key>_CFURLString</key> <string>$(mdfind kind:application $app)</string> <key>_CFURLStringType</key> <integer>0</integer></dict></dict></dict>"
        defaults write com.apple.dock persistent-apps -array-add $app_name
    else
        echo "Application '$app' cannot be found, skipping.."
    fi
done

# Reset dock
killall Dock