function update
    sudo apt update && sudo apt upgrade -y

    sudo apt autoclean && sudo apt autopurge && sudo apt autoremove && sudo apt clean

    brew update && brew upgrade

    rustup update

    cargo install ast-grep
    cargo install eza
    cargo install stylua
    cargo install tsql
    cargo install vivid

    cargo install --locked bacon

    cargo install --git https://github.com/neovide/neovide

    pip install --upgrade pip
    pip install --upgrade gcalcli
    pip install --upgrade suite-py

    asdf update
    asdf update --all

    curl 'https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip' -o '~/awscliv2.zip'
    unzip ~/awscliv2.zip
    sudo ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update

    fish_update_completions

    fwupdmgr update
end
