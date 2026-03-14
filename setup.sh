#!/usr/bin/env bash

pkg install -y termux-api fish git-delta gh fastfetch starship eza zoxide bat fd ripgrep fzf jq htop yazi file stow lazygit helix helix-grammars zellij build-essential nodejs-lts
stow -vt $HOME */ --adopt
bat cache --build
mkdir -p $HOME/projects && touch $HOME/.hushlogin
chsh -s fish
