#!/usr/bin/env bash
sudo passwd
sudo passwd ${USER}
sudo adduser ${USER} sudo
sudo adduser ${USER} admin

sudo apt-get install -y git
cd ${HOME}
git clone https://github.com/phongvcao/dotfiles.git ${HOME}/.dotfiles

cd ${HOME}/.dotfiles
./setup && install && vim
