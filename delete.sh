#!/bin/bash

sudo chsh -s "$(command -v bash)" "${USER}"
sudo rm -rf /home/linuxbrew/

sudo rm /etc/udev/rules.d/50-zsa.rules

rm -rf ~/bin/
rm -rf ~/.config/fish/
rm -rf ~/dev/
rm -rf ~/Downloads/*

exit
