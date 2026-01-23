#!/usr/bin/env fish

set directories \
    alacritty/themes \
    bat/themes \
    copyq/themes \
    delta \
    dunst \
    helix/themes \
    i3 \
    lazydocker \
    lazygit \
    nushell \
    ov \
    picom \
    polybar/themes \
    rofi/themes \
    superfile/theme \
    television/themes \
    zellij/layouts

for directory in $directories
    set -l path ~/.config/$directory/

    if not test -d $path
        mkdir -p $path
    end
end

ln -sf ~/dev/me/dot-files/.gitconfig ~/

ln -sf ~/dev/me/dot-files/.iex.exs ~/

ln -sf ~/dev/me/dot-files/.Xresources ~/

ln -sf ~/dev/me/dot-files/alacritty/alacritty.toml ~/.config/alacritty/

ln -sf ~/dev/me/dot-files/alacritty/catppuccin/*.toml ~/.config/alacritty/themes/

ln -sf ~/dev/me/dot-files/bat/config ~/.config/bat/

ln -sf ~/dev/me/dot-files/bat/catppuccin/themes/*.tmTheme ~/.config/bat/themes/

ln -sf ~/dev/me/dot-files/copyq/themes/catppuccin-mocha.ini ~/.config/copyq/themes/

ln -sf ~/dev/me/dot-files/delta/delta.gitconfig ~/.config/delta/

ln -sf ~/dev/me/dot-files/delta/catppuccin/catppuccin.gitconfig ~/.config/delta/

ln -sf ~/dev/me/dot-files/dunst/dunstrc ~/.config/dunst/

ln -sf ~/dev/me/dot-files/fish/config.fish ~/.config/fish/

ln -sf ~/dev/me/dot-files/fish/functions/*.fish ~/.config/fish/functions/

ln -sf ~/dev/me/dot-files/helix/config.toml ~/.config/helix/

ln -sf ~/dev/me/dot-files/helix/languages.toml ~/.config/helix/

ln -sf ~/dev/me/dot-files/helix/catppuccin/themes/default/*.toml ~/.config/helix/themes/

ln -sf ~/dev/me/dot-files/i3/config ~/.config/i3/

ln -sf ~/dev/me/dot-files/lazydocker/config.yml ~/.config/lazydocker/

ln -sf ~/dev/me/dot-files/lazygit/config.yml ~/.config/lazygit/

ln -sf ~/dev/me/dot-files/nushell/*.nu ~/.config/nushell/

ln -sf ~/dev/me/dot-files/ov/config.yaml ~/.config/ov/

ln -sf ~/dev/me/dot-files/picom/picom.conf ~/.config/picom/

ln -sf ~/dev/me/dot-files/polybar/config.ini ~/.config/polybar/

ln -sf ~/dev/me/dot-files/polybar/launch.sh ~/.config/polybar/

ln -sf ~/dev/me/dot-files/polybar/catppuccin/themes/*.ini ~/.config/polybar/themes/

ln -sf ~/dev/me/dot-files/rofi/*.rasi ~/.config/rofi/

ln -sf ~/dev/me/dot-files/rofi/catppuccin/catppuccin-default.rasi ~/.config/rofi/themes/

ln -sf ~/dev/me/dot-files/rofi/catppuccin/themes/**.rasi ~/.config/rofi/themes/

ln -sf ~/dev/me/dot-files/starship/starship.toml ~/.config/

ln -sf ~/dev/me/dot-files/superfile/config.toml ~/.config/superfile/

ln -sf ~/dev/me/dot-files/superfile/catppuccin/themes/**/*.toml ~/.config/superfile/theme/

ln -sf ~/dev/me/dot-files/television/*.toml ~/.config/television/

ln -sf ~/dev/me/dot-files/television/catppuccin/themes/*.toml ~/.config/television/themes/

ln -sf ~/dev/me/dot-files/zellij/config.kdl ~/.config/zellij/

ln -sf ~/dev/me/dot-files/zellij/layouts/*.kdl ~/.config/zellij/layouts/

ln -sf ~/dev/me/dot-files/zellij/plugins/*.wasm ~/.config/zellij/plugins/
