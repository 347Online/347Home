#!/usr/bin/env zsh

source "${0:a:h}/functions.zsh"
__assert_darwin

mkdir -p "$HOME/Library/LaunchAgents/" 2>/dev/null

echo '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.local.KeyRemapping</string>
    <key>ProgramArguments</key>
    <array>
        <string>/usr/bin/hidutil</string>
        <string>property</string>
        <string>--set</string>
        <string>{"UserKeyMapping":[
            {
              "HIDKeyboardModifierMappingSrc": 0x700000039,
              "HIDKeyboardModifierMappingDst": 0x700000029
            }
        ]}</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
</dict>
</plist>' > "$HOME/Library/LaunchAgents/local.hidutilKeyMapping.plist"

launchctl load "$HOME/Library/LaunchAgents/local.hidutilKeyMapping.plist" 2>/dev/null
launchctl start local.hidutilKeyMapping 2>/dev/null
