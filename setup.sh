#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get install -y \
  curl \
  git \
  gnupg2 \
  jq \
  unzip \
  zsh \
  fonts-powerline \
  tmux

sudo wget https://github.com/mikefarah/yq/releases/download/v4.11.2/yq_linux_amd64 -O /usr/bin/yq &&\
  sudo chmod +x /usr/bin/yq


git clone https://github.com/dougborg/gdub.git
pushd gdub
sudo ./install
popd && rm -rf gdub

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
ln -s $(pwd)/agnoster.zsh-theme $(pwd)/.oh-my-zsh/themes/agnoster.zsh-theme || echo "Skipping"

wget https://download.jetbrains.com/fonts/JetBrainsMono-2.001.zip
sudo unzip JetBrainsMono-2.001.zip -d /usr/share/fonts
sudo fc-cache -f -v
sudo chsh -s /usr/bin/zsh $USER

function linkFile() {
    ln -sf $(pwd)/$1 ~/$1 || echo "Skipping $1"
}

linkFile .vim
linkFile .vimrc
linkFile .gitconfig
linkFile .zshrc
linkFile .tmux.conf

pwd
gw