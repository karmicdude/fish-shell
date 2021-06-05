#!/usr/bin/env fish

set -U fish_greeting

set -Ux SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/gnupg/S.gpg-agent.ssh"

set -Ux EDITOR vim
set -Ux VISUAL $EDITOR
set -Ux PAGER "bat -nn"
set -Ux MANPAGER "sh -c 'col -bx | bat -l man -p'"

# vim: ft=fish