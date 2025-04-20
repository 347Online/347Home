#!/usr/bin/env zsh

source "${0:a:h}/functions.zsh"
__assert_darwin

export HOMEBREW_BUNDLE_FILE="$HOME/.config/brewfile/Personal.Brewfile"

/opt/homebrew/bin/brew bundle
