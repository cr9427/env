#!/usr/bin/env sh

git update-index --skip-worktree stow/mc/.config/mc/ini
git update-index --skip-worktree stow/ssh/.ssh/authorized_keys
git update-index --skip-worktree stow/ssh/.ssh/config
