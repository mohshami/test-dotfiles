#!/bin/bash

apt-get update
apt-get install -y fish zoxide

rsync -Wav /host-home-folder/.config/nvim/ $HOME/.config/nvim/
rsync -Wav /host-home-folder/.config/fish/ $HOME/.config/fish/

curl -L 'https://github.com/neovim/neovim/releases/download/v0.10.0/nvim-linux64.tar.gz' -o /opt/nvim-linux64.tar.gz

cd /opt

tar xvf nvim-linux64.tar.gz

sudo ln -s /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim
