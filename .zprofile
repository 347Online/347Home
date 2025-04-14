__is_darwin() {
  [[ "$(uname)" = "Darwin" ]]
}

if [[ __is_darwin ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
