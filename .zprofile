if [[ "$(uname)" = "Darwin" ]]; then
  export XDG_CONFIG_HOME="$HOME/.config"
  export HOMEBREW_BUNDLE_FILE="$HOME/.config/brewfile/Brewfile"
  export HOMEBREW_NO_ENV_HINTS=1
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
