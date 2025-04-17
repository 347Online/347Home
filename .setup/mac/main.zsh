#!/usr/bin/env zsh

source "${0:a:h}/functions.zsh"
__assert_darwin

zsh "${0:a:h}/basics.zsh"
zsh "${0:a:h}/dock.zsh"
zsh "${0:a:h}/touchid-sudo.zsh"
