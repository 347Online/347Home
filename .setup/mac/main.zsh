#!/usr/bin/env zsh

source "${0:a:h}/functions.zsh"
__assert_darwin

${0:a:h}/basics.zsh
${0:a:h}/dock.zsh
${0:a:h}/prefs.zsh
${0:a:h}/touchid-sudo.zsh

echo "Setup complete, please restart your shell" >&2
