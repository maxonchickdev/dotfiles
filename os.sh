#!/bin/zsh

# DOCK
# position
defaults write com.apple.dock "orientation" -string "bottom"
# icon size
defaults write com.apple.dock "tilesize" -int "18"
# autohide animation time
defaults write com.apple.dock "autohide" -bool "true"
# autohide animation time
defaults write com.apple.dock "autohide-time-modifier" -float "0.5"
# autohide delay
defaults write com.apple.dock "autohide-delay" -float "0.2"
# show recents
defaults write com.apple.dock "show-recents" -bool "false"
# minimize animation effect
defaults write com.apple.dock "mineffect" -string "scale"
# active applications only
defaults write com.apple.dock "static-only" -bool "true"
# scroll to exposé app
defaults write com.apple.dock "scroll-to-open" -bool "false"

# MISSION CONTROL
# rearrange automatically
defaults write com.apple.dock "mru-spaces" -bool "true"
# group windows by application
defaults write com.apple.dock "expose-group-apps" -bool "true"
# switch to space with open windows
defaults write NSGlobalDomain "AppleSpacesSwitchOnActivate" -bool "true"
killall Dock


# SCREENSHOTS
# disable shadow
defaults write com.apple.screencapture "disable-shadow" -bool "true"
# include date
defaults write com.apple.screencapture "include-date" -bool "true"
# location
defaults write com.apple.screencapture "location" -string "~/Documents/screenshots" && killall SystemUIServer
# display thumbnail
defaults write com.apple.screencapture "show-thumbnail" -bool "true"
# screenshot format
defaults write com.apple.screencapture "type" -string "png"


# FINDER
# quit
defaults write com.apple.finder "QuitMenuItem" -bool "false"
# show extensions
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
# show hidden files
defaults write com.apple.finder "AppleShowAllFiles" -bool "false"
# path bar
defaults write com.apple.finder "ShowPathbar" -bool "true"
# default view style
defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv"
# keep folders on top
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"
# open folders destination
defaults write com.apple.finder "FinderSpawnTab" -bool "true"
# default search scope
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"
# empty bin items after 30 days
defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "true"
# changing file extension warning
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false"
# sidebar icon size
defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int "1"

# DESKTOP
# all icons
defaults write com.apple.finder "CreateDesktop" -bool "true"
killall Finder


# TRACKPAD
# click weight
defaults write com.apple.AppleMultitouchTrackpad "FirstClickThreshold" -int "1"


# KEYBOARD
# fn/🌐 key usage
defaults write com.apple.HIToolbox AppleFnUsageType -int "1"
# function keys behavior
defaults write NSGlobalDomain com.apple.keyboard.fnState -bool false
# keyboard navigation
defaults write NSGlobalDomain AppleKeyboardUIMode -int "0"
# toggle language indicator
defaults write kCFPreferencesAnyApplication TSMLanguageIndicatorEnabled -bool "false"


# TEXT EDIT
# smart quotes
defaults write com.apple.TextEdit "SmartQuotes" -bool "true"
killall TextEdit

# ACTIVITY MONITOR
# update frequency
defaults write com.apple.ActivityMonitor "UpdatePeriod" -int "2"
# dock icon type
defaults write com.apple.ActivityMonitor "IconType" -int "0"
killall Activity\ Monitor


# MESSAGES
# show subject field
defaults write com.apple.MobileSMS "MMSShowSubject" -bool "true"
killall Messages
