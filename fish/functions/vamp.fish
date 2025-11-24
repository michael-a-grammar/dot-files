function vamp
    stylua ~/dev/me/vamp/src

    rm -rf ~/.config/nvim/lua/
    rm -rf ~/.config/nvim/after/

    cp -r ~/dev/me/vamp/src/lua/ ~/.config/nvim/lua/
    cp -r ~/dev/me/vamp/src/after/ ~/.config/nvim/after/
    cp ~/dev/me/vamp/src/*.lua ~/.config/nvim/
end
