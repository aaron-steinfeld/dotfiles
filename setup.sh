#!/bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install zsh yq tmux git buf gdub tree
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -s $(pwd)/agnoster.zsh-theme $(pwd)/.oh-my-zsh/themes/agnoster.zsh-theme || echo "Skipping"

wget https://download.jetbrains.com/fonts/JetBrainsMono-2.001.zip
sudo unzip JetBrainsMono-2.001.zip -d /usr/share/fonts
sudo fc-cache -f -v
sudo apt-get install -y fonts-powerline
chsh -s /usr/bin/zsh $USERNAME