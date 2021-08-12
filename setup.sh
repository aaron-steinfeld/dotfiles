export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get install -y \
  curl \
  git \
  gnupg2 \
  jq \
  openssh-client \
  unzip \
  zsh \
  fonts-powerline

sudo wget https://github.com/mikefarah/yq/releases/download/v4.11.2/yq_linux_amd64 -O /usr/bin/yq &&\
  sudo chmod +x /usr/bin/yq


git clone https://github.com/dougborg/gdub.git
pushd gdub
sudo ./install
popd && rm -rf gdub


sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -s $(pwd)/agnoster.zsh-theme $(pwd)/.oh-my-zsh/themes/agnoster.zsh-theme || echo "Skipping"

wget https://download.jetbrains.com/fonts/JetBrainsMono-2.001.zip
sudo unzip JetBrainsMono-2.001.zip -d /usr/share/fonts
sudo fc-cache -f -v
sudo chsh -s /usr/bin/zsh $USER