#!/usr/bin/env zsh

__assert_darwin() {
  if [[ "$(uname)" != "Darwin" ]]; then
    echo "This script is for Mac" >&2
    exit 1
  fi
}
