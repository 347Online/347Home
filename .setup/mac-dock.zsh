dock_item() {
  defaults write com.apple.dock persistent-apps -array-add \
  "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>$1</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
}

defaults write com.apple.dock tilesize 64
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock persistent-others -array

defaults write com.apple.dock persistent-apps -array

dock_item "/Applications/Firefox.app"
dock_item "/Applications/Thunderbird.app"
dock_item "/Applications/Fantastical.app"
dock_item "/System/Applications/Music.app"
dock_item "/Applications/Broadcasts.app"
dock_item "/Applications/Overcast.app" # TODO: Personal only
dock_item "/System/Applications/Messages.app" # TODO: Personal only
dock_item "/Applications/Ghostty.app"
dock_item "/System/Applications/System Settings.app"

killall Dock
