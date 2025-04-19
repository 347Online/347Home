#!/usr/bin/env zsh

source "${0:a:h}/functions.zsh"

echo "Applying preferences to defaults database..." >&2

plutil -replace AppleSymbolicHotKeys.64.enabled -bool no ~/Library/Preferences/com.apple.symbolichotkeys.plist
plutil -replace AppleSymbolicHotKeys.65.enabled -bool no ~/Library/Preferences/com.apple.symbolichotkeys.plist

defaults write "com.apple.HIToolbox" "AppleFnUsageType" -int 1

defaults write "NSGlobalDomain" "NSAutomaticCapitalizationEnabled" -bool no
defaults write "NSGlobalDomain" "NSAutomaticSpellingCorrectionEnabled" -bool no
defaults write "NSGlobalDomain" "NSAutomaticQuoteSubstitutionEnabled" -bool no
defaults write "NSGlobalDomain" "NSAutomaticPeriodSubstitutionEnabled" -bool no
defaults write "NSGlobalDomain" "NSAutomaticDashSubstitutionEnabled" -bool no
defaults write "NSGlobalDomain" "NSAutomaticInlinePredictionEnabled" -bool no
defaults write "NSGlobalDomain" "AppleEnableSwipeNavigateWithScrolls" -bool yes
defaults write "NSGlobalDomain" "ApplePressAndHoldEnabled" -bool no
defaults write "NSGlobalDomain" "TSWPAutomaticSpellingCorrection" -bool no
defaults write "NSGlobalDomain" "KeyRepeat" -int 2

defaults write "com.apple.messages.text" "EmojiReplacement" -int 1
killall Messages

defaults write "com.apple.TimeMachine" "DoNotOfferNewDisksForBackup" -bool no

defaults write "com.apple.ImageCapture" "disableHotPlug" -bool yes

defaults write "com.apple.commerce" "AutoUpdate" -bool yes

defaults write "com.apple.WindowManager" "EnableStandardClickToShowDesktop" -int 0
defaults write "com.apple.WindowManager" "HasDisplayedShowDesktopEducation" -int 1

# Avoid creating .DS_Store files on network or USB volumes
defaults write "com.apple.desktopservices" "DSDontWriteNetworkStores" -bool yes
defaults write "com.apple.desktopservices" "DSDontWriteUSBStores" -bool yes

defaults write "com.apple.AdLib" "allowApplePersonalizedAdvertising" -bool no

# Automatically quit printer app once the print jobs complete
defaults write "com.apple.print.PrintingPrefs" "Quit When Finished" -bool yes

defaults write "com.apple.SoftwareUpdate" "AutomaticCheckEnabled" -bool yes
defaults write "com.apple.SoftwareUpdate" "ScheduleFrequency" -int 1
defaults write "com.apple.SoftwareUpdate" "AutomaticDownload" -int 1
defaults write "com.apple.SoftwareUpdate" "CriticalUpdateInstall" -int 1

defaults write "com.pilotmoon.scroll-reverser" "StartAtLogin" -bool yes
defaults write "com.pilotmoon.scroll-reverser" "HideIcon" -bool yes
defaults write "com.pilotmoon.scroll-reverser" "ReverseTrackpad" -bool no
defaults write "com.pilotmoon.scroll-reverser" "InvertScrollingOn" -bool yes
defaults write "com.pilotmoon.scroll-reverser" "ReverseX" -bool yes

defaults write "com.raycast.macos" "raycastGlobalHotkey" -string "Command-49"
defaults write "com.raycast.macos" "useHyperKeyIcon" -bool yes
defaults write "com.raycast.macos" "onboardingCompleted" -bool yes
defaults write "com.raycast.macos" "onboarding_setupHotkey" -bool yes
defaults write "com.raycast.macos" "NSStatusItem Visible raycastIcon" -bool no
defaults write "com.raycast.macos" "emojiPicker_skinTone" -string "standard"

defaults write "io.fadel.missioncontrolplus.preferences" "HideMenubarItem" -bool yes

defaults write "com.witt-software.Rocket-Typist-setapp" "AbbreviationDelimiterKey" -int 1
defaults write "com.witt-software.Rocket-Typist-setapp" "AbbreviationsTriggerType" -int 1
defaults write "com.witt-software.Rocket-Typist-setapp" "AutoPasteEnabled" -bool yes
defaults write "com.witt-software.Rocket-Typist-setapp" "WelcomeViewHasBeenShown" -bool yes
defaults write "com.witt-software.Rocket-Typist-setapp" "ShowRTInMenuBar" -bool no

defaults write "com.getcleanshot.app-setapp" "afterScreenshotActions" -array 0 1 2
defaults write "com.getcleanshot.app-setapp" "afterVideoActions" -array 0 1 2
defaults write "com.getcleanshot.app-setapp" "analyticsAllowed" -bool yes
defaults write "com.getcleanshot.app-setapp" "autoClosePopup" -bool yes
defaults write "com.getcleanshot.app-setapp" "captureWithoutDesktopIcons" -bool yes
defaults write "com.getcleanshot.app-setapp" "deletePopupAfterDragging" -bool yes
defaults write "com.getcleanshot.app-setapp" "exportPath" -string "/Users/katie/Library/Mobile Documents/com~apple~CloudDocs/Files/Screenshots"
defaults write "com.getcleanshot.app-setapp" "freezeScreen" -bool yes
defaults write "com.getcleanshot.app-setapp" "popupAskForDestinationWhenSaving" -bool no
defaults write "com.getcleanshot.app-setapp" "showMenuBarIcon" -bool yes

echo "Done" >&2

echo "Re-activating settings..." >&2

/System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u

echo "Done" >&2
