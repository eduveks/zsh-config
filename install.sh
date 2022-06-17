#!/bin/sh

sudo apt update

sudo apt install -y zsh git

chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

zsh

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

awk '{sub("robbyrussell","ys")}1' ~/.zshrc > ~/.zshrc.tmp && mv ~/.zshrc.tmp ~/.zshrc

awk '{sub("plugins=\\(git","plugins=(git emacs zsh-autosuggestions zsh-syntax-highlighting")}1' ~/.zshrc > ~/.zshrc.tmp && mv ~/.zshrc.tmp ~/.zshrc

echo "alias e=\"bash -c emacs\"" >> ~/.zshrc
