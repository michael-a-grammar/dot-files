function vamp
    stylua ~/dev/me/vamp/src

    rm -rf ~/.config/nvim/*

    ln -sf ~/dev/me/vamp/nvim-pack-lock.json ~/.config/nvim/

    cp -a ~/dev/me/vamp/src/. ~/.config/nvim/
end
