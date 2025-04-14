if [[ "$(uname)" != "Darwin" ]]; then
  echo "This script is for Mac" >&2
  exit 1
fi

cd

if [[ "$(/usr/bin/which brew)" = "" ]]; then
  echo "Brew not installed" >&2
  echo "Attempting to install..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" || exit 1
fi

echo "Running brew bundle..." >&2
brew bundle || exit 1
echo "Done" >&2

echo "Placing dotfiles with GNU stow..."
cd dotfiles
stow . || exit 1
echo "Done" >&2
