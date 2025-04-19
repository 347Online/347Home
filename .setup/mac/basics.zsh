#!/usr/bin/env zsh

source "${0:a:h}/functions.zsh"
__assert_darwin

cd

if [[ "$(/usr/bin/which brew)" = "" ]]; then
  echo "Brew not installed" >&2
  echo "Attempting to install..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" || exit 1
fi

eval "$(/opt/homebrew/bin/brew shellenv)"
echo "Running brew bundle..." >&2
brew bundle || exit 1
echo "Done" >&2

echo "Placing dotfiles with GNU stow..."
cd dotfiles
stow . || exit 1
echo "Done" >&2

echo "Don't forget to remap caps lock to escape if you haven't already" >&2
