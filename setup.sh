#!/usr/bin/env bash

stow -vt $HOME */ --adopt
bat cache --build
mkdir -p $HOME/projects && touch $HOME/.hushlogin
chsh -s fish
