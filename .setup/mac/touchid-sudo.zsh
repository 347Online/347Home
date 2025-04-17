#!/usr/bin/env zsh

source "${0:a:h}/functions.zsh"
__assert_darwin

if [[ -f /etc/pam.d/sudo_local ]]; then
  echo "WARN: sudo_local exists, operation would overwrite, skipping" >&2
  exit 0
fi

echo "Enabling touch ID for sudo..." >&2
echo '# sudo_local: local config file which survives system update and is included for sudo
auth       sufficient     pam_tid.so
' | sudo tee /etc/pam.d/sudo_local

echo "Done"
