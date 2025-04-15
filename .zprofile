if [[ "$(uname)" = "Darwin" ]]; then
  export XDG_CONFIG_HOME="$HOME/.config"
  export HOMEBREW_BUNDLE_FILE="$HOME/.config/brewfile/Brewfile"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
