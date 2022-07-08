#!/bin/bash

# brew
brew install bat
brew install bat-extras
brew install difftastic
brew install fd
brew install fzf
brew install gh
brew install git-delta
brew install git-lfs
brew install helix
brew install jq
brew install kubectl
brew install lazydocker
brew install lazygit
brew install lnav
brew install lua-language-server
brew install neofetch
brew install neomutt
brew install nushell
brew install ov
brew install pgcli
brew install ripgrep
brew install shellcheck
brew install shfmt
brew install starship
brew install superfile
brew install television
brew install tlrc
brew install xclip
brew install zellij

# apt
sudo apt install -y alacritty \
    amazon-ecr-credential-helper \
    colortest \
    copyq \
    firefox \
    gcal

# snap
sudo snap install apple-music-for-linux
sudo snap install aws-cli
sudo snap install discord
sudo snap install slack

# docker
if not type docker >/dev/null
    sudo install -m 0755 -d /etc/apt/keyrings
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
    sudo chmod a+r /etc/apt/keyrings/docker.asc

    echo \
        "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu noble stable" \
        | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null

    sudo apt update

    sudo apt install -y docker-ce \
        docker-ce-cli \
        containerd.io \
        docker-buildx-plugin \
        docker-compose-plugin

    sudo usermod -aG docker $USER
end

# cloudflare warp
if not type warp-cli >/dev/null
    curl -fsSL https://pkg.cloudflareclient.com/pubkey.gpg | sudo gpg --yes --dearmor --output /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg

    echo "deb [signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ $(lsb_release -cs) main" \
        | sudo tee /etc/apt/sources.list.d/cloudflare-client.list

    sudo apt update
    sudo apt install -y cloudflare-warp
end

# vault
if not type vault >/dev/null
    brew tap hashicorp/tap
    brew install hashicorp/tap/vault
end

# cargo
cargo install ast-grep
cargo install eza
cargo install stylua
cargo install vivid

# pip
pip install gcalcli
pip install suite-py

# kubectl...
