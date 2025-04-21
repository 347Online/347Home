#!/usr/bin/env zsh

source "${0:a:h}/functions.zsh"
__assert_darwin

${0:a:h}/basics.zsh
${0:a:h}/dock.zsh
${0:a:h}/prefs.zsh
${0:a:h}/touchid-sudo.zsh
${0:a:h}/remap-capslock-escape.zsh

read -q "personal?Is this a personal machine? [y/n]: "
if [[ "$personal" =~ ^[Yy]$ ]]; then
  echo
  ${0:a:h}/personal.zsh
fi

echo "Setup complete, please restart your shell" >&2
