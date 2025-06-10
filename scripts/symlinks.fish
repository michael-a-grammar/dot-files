function platform
    if test (uname) = Linux
        echo linux
    end
end

function dot_files
    echo (path resolve (string join '' (status dirname) "/../"))
end

function ensure_config_directories --argument-names config_directories
    for directory in $config_directories
        set -l path ~/.config/$directory/

        echo "Checking for the existence of $path"

        if not test -d $path
            echo "Creating $path"

            mkdir $path
        end
    end
end

function symlink --argument-names from to
    ln -sf $from $to
end

set -l platform (platform)

set -l dot_files (dot_files)

set -l config_directories bat bat/themes helix helix/themes kitty kitty/themes lazydocker lazygit superfile

set -l file_names_catppuccin_frappe catppuccin_frappe
set -l file_names_catppuccin_latte catppuccin_latte
set -l file_names_catppuccin_macchiato catppuccin_macchiato
set -l file_names_catppuccin_mocha catppuccin_mocha

ensure_config_directories $config_directories

echo $platform
echo $dot_files
echo $config_directories

# ln -sf ~/dev/me/dot-files/.iex.exs ~/.iex.exs

# ln -sf ~/dev/me/dot-files/bat/config ~/.config/bat/config

# ln -sf ~/dev/me/dot-files/bat/catppuccin/themes/Catppuccin\ Frappe.tmTheme ~/.config/bat/themes/catppuccin-frappe.tmTheme
# ln -sf ~/dev/me/dot-files/bat/catppuccin/themes/Catppuccin\ Latte.tmTheme ~/.config/bat/themes/catppuccin-latte.tmTheme
# ln -sf ~/dev/me/dot-files/bat/catppuccin/themes/Catppuccin\ Macchiato.tmTheme ~/.config/bat/themes/catppuccin-latte
# ln -sf ~/dev/me/dot-files/bat/catppuccin/themes/Catppuccin\ Mocha.tmTheme ~/.config/bat/themes/

# ln -sf ~/dev/me/dot-files/fish/config_linux.fish ~/.config/fish/config.fish

# for fun in ~/dev/me/dot-files/fish/functions/*
#     ln -sf ~/dev/me/dot-files/$fun ~/.config/$fun
# end

# ln -sf ~/dev/me/dot-files/helix/config.toml ~/.config/helix/config.toml

# ln -sf ~/dev/me/dot-files/helix/catppuccin/themes/default/catppuccin_frappe.toml ~/.config/helix/themes
# ln -sf ~/dev/me/dot-files/helix/catppuccin/themes/default/catppuccin_latte.toml ~/.config/helix/themes
# ln -sf ~/dev/me/dot-files/helix/catppuccin/themes/default/catppuccin_macchiato.toml ~/.config/helix/themes
# ln -sf ~/dev/me/dot-files/helix/catppuccin/themes/default/catppuccin_mocha.toml ~/.config/helix/themes

# ln -sf ~/dev/me/dot-files/kitty/frappe.conf ~/.config/kitty/catppuccin-frappe.conf
# ln -sf ~/dev/me/dot-files/kitty/latte.conf ~/.config/kitty/catppuccin-latte.conf
# ln -sf ~/dev/me/dot-files/kitty/macchiato.conf ~/.config/kitty/catppuccin-macchiato.conf
# ln -sf ~/dev/me/dot-files/kitty/mocha.conf ~/.config/kitty/catppuccin-mocha.conf

# ln -sf ~/dev/me/dot-files/kitty/kitty-linux.conf ~/.config/kitty/kitty.conf

# ln -sf ~/dev/me/dot-files/lazydocker/config.yml ~/.config/lazydocker/config.yml
# ln -sf ~/dev/me/dot-files/lazygit/config.yml ~/.config/lazygit/config.yml

# ln -sf ~/dev/me/dot-files/starship/starship.toml ~/.config/starship.toml

# ln -sf ~/dev/me/dot-files/superfile/config.toml ~/.config/superfile/config.toml
