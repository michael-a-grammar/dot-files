function update
    sudo apt update && sudo apt upgrade -y

    sudo apt autoclean && sudo apt autopurge && sudo apt autoremove && sudo apt clean

    brew update && brew upgrade

    rustup update

    cargo install --locked ast-grep
    cargo install --locked eza
    cargo install --locked stylua
    cargo install --locked tsql
    cargo install --locked vivid

    cargo install --locked bacon

    cargo install --locked --git https://github.com/neovide/neovide

    pip install --upgrade pip
    pip install --upgrade gcalcli
    pip install --upgrade suite-py

    asdf update --all

    curl 'https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip' -o '~/awscliv2.zip'
    unzip ~/awscliv2.zip
    sudo ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update

    fish_update_completions

    fwupdmgr update
end
