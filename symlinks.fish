#!/usr/bin/env fish

for directory in bat/themes delta helix/themes kitty/themes lazydocker lazygit nushell ov superfile/theme television/themes warp-terminal/themes
    set -l path ~/.config/$directory/

    if not test -d $path
        mkdir -p $path
    end
end

ln -sf ~/dev/me/dot-files/.gitconfig ~/

ln -sf ~/dev/me/dot-files/.iex.exs ~/

ln -sf ~/dev/me/dot-files/bat/config ~/.config/bat/

ln -sf ~/dev/me/dot-files/bat/catppuccin/themes/*.tmTheme ~/.config/bat/themes/

ln -sf ~/dev/me/dot-files/delta/delta.gitconfig ~/.config/delta/

ln -sf ~/dev/me/dot-files/delta/catppuccin/catppuccin.gitconfig ~/.config/delta/

ln -sf ~/dev/me/dot-files/fish/config.fish ~/.config/fish/

ln -sf ~/dev/me/dot-files/fish/functions/*.fish ~/.config/fish/functions/

ln -sf ~/dev/me/dot-files/helix/config.toml ~/.config/helix/

ln -sf ~/dev/me/dot-files/helix/languages.toml ~/.config/helix/

ln -sf ~/dev/me/dot-files/helix/catppuccin/themes/default/*.toml ~/.config/helix/themes/

ln -sf ~/dev/me/dot-files/kitty/kitty.conf ~/.config/kitty/

ln -sf ~/dev/me/dot-files/kitty/catppuccin/themes/*.conf ~/.config/kitty/themes/

ln -sf ~/dev/me/dot-files/lazydocker/config.yml ~/.config/lazydocker/

ln -sf ~/dev/me/dot-files/lazygit/config.yml ~/.config/lazygit/

ln -sf ~/dev/me/dot-files/nushell/*.nu ~/.config/nushell/

ln -sf ~/dev/me/dot-files/ov/config.yaml ~/.config/ov/

ln -sf ~/dev/me/dot-files/starship/starship.toml ~/.config/

ln -sf ~/dev/me/dot-files/superfile/config.toml ~/.config/superfile/

ln -sf ~/dev/me/dot-files/superfile/catppuccin/themes/**/*.toml ~/.config/superfile/theme/

ln -sf ~/dev/me/dot-files/television/*.toml ~/.config/television/

ln -sf ~/dev/me/dot-files/television/catppuccin/themes/*.toml ~/.config/television/themes/

ln -sf ~/dev/me/dot-files/warp-terminal/catppuccin/themes/*.yml ~/.config/warp-terminal/themes/
