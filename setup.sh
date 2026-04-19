#!/usr/bin/env bash
set -e

git config --global --unset user.signingkey && git config --global --unset commit.gpgsign
pkg install -y termux-api git fish git-delta fastfetch eza zoxide bat fd ripgrep starship fzf jq htop yazi file stow lazygit neovim zellij build-essential nodejs-lts tur-repo glibc-repo
stow -t $HOME */ --adopt
bat cache --build
mkdir -p $HOME/{projects,.img} && touch $HOME/.hushlogin
curl -o $HOME/.img/back.png https://imgs.search.brave.com/rb92mgsxpjQCAweuBbUbTjlBQS9VFUMMX6EXsVK0DKc/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJhY2Nlc3Mu/Y29tL2Z1bGwvMTIy/NTk3NDEuanBn
chsh -s fish
