#!/bin/sh

sudo apt update

sudo apt install -y zsh git

sh -c "$(curl -fsSL https://raw.github.com/eduveks/zsh-config/master/config.sh)"
