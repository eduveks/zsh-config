#!/bin/sh

sudo apt update

sudo apt install -y zsh git

chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

awk '{sub("robbyrussell","ys")}1' ~/.zshrc > ~/.zshrc.tmp && mv ~/.zshrc.tmp ~/.zshrc

awk '{sub("plugins=\\(git","plugins=(git emacs zsh-autosuggestions zsh-syntax-highlighting")}1' ~/.zshrc > ~/.zshrc.tmp && mv ~/.zshrc.tmp ~/.zshrc

echo "alias e=\"bash -c emacs\"" >> ~/.zshrc
