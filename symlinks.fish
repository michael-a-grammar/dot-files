#!/usr/bin/env fish

for directory in bat/themes helix/themes kitty/themes lazydocker lazygit superfile/theme
    set -l path ~/.config/$directory/

    if not test -d $path
        mkdir -p $path
    end
end

ln -sf ~/dev/me/dot-files/.gitconfig ~/.gitconfig

ln -sf ~/dev/me/dot-files/.iex.exs ~/.iex.exs

ln -sf ~/dev/me/dot-files/bat/config ~/.config/bat/config

ln -sf ~/dev/me/dot-files/bat/catppuccin/themes/*.tmTheme ~/.config/bat/themes/

ln -sf ~/dev/me/dot-files/fish/config.fish ~/.config/fish/config.fish

ln -sf ~/dev/me/dot-files/fish/functions/*.fish ~/.config/fish/functions/

ln -sf ~/dev/me/dot-files/helix/config.toml ~/.config/helix/config.toml

ln -sf ~/dev/me/dot-files/helix/catppuccin/themes/default/*.toml ~/.config/helix/themes/

ln -sf ~/dev/me/dot-files/kitty/kitty.conf ~/.config/kitty/kitty.conf

ln -sf ~/dev/me/dot-files/kitty/catppuccin/themes/*.conf ~/.config/kitty/themes/

ln -sf ~/dev/me/dot-files/lazydocker/config.yml ~/.config/lazydocker/config.yml

ln -sf ~/dev/me/dot-files/lazygit/config.yml ~/.config/lazygit/config.yml

ln -sf ~/dev/me/dot-files/starship/starship.toml ~/.config/starship.toml

ln -sf ~/dev/me/dot-files/superfile/config.toml ~/.config/superfile/config.toml

ln -sf ~/dev/me/dot-files/superfile/catppuccin/themes/**/*.toml ~/.config/superfile/theme/
