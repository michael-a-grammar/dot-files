set -l dev_dir 'michael-a-grammar'
set -l is_linux true

for d in bat bat/themes colorls doom hx kitty
    set -l path ~/.config/$d/
    if not test -d $path
        mkdir $path
    end
end

ln -sf ~/dev/$dev_dir/dot-files/.iex.exs ~/.iex.exs
ln -sf ~/dev/$dev_dir/dot-files/.irbrc   ~/.irbrc

ln -sf ~/dev/$dev_dir/dot-files/starship/starship.toml ~/.config/starship.toml

ln -sf ~/dev/$dev_dir/dot-files/bat/config                              ~/.config/bat/config
ln -sf ~/dev/$dev_dir/dot-files/bat/themes/Catppuccin-mocha.tmTheme     ~/.config/bat/themes/Catppuccin-mocha.tmTheme

ln -sf ~/dev/$dev_dir/dot-files/colorls/dark_colors.yaml ~/.config/colorls/dark_colors.yaml

ln -sf ~/dev/$dev_dir/dot-files/doom-emacs/config.el  ~/.config/doom/config.el
ln -sf ~/dev/$dev_dir/dot-files/doom-emacs/init.el    ~/.config/doom/init.el
ln -sf ~/dev/$dev_dir/dot-files/doom-emacs/package.el ~/.config/doom/package.el

ln -sf ~/dev/$dev_dir/dot-files/fish/functions/abbreviations.fish          ~/.config/fish/functions/abbreviations.fish
ln -sf ~/dev/$dev_dir/dot-files/fish/functions/fish_greeting.fish          ~/.config/fish/functions/fish_greeting.fish
ln -sf ~/dev/$dev_dir/dot-files/fish/functions/fish_user_key_bindings.fish ~/.config/fish/functions/fish_user_key_bindings.fish
ln -sf ~/dev/$dev_dir/dot-files/fish/functions/F.fish                      ~/.config/fish/functions/F.fish
ln -sf ~/dev/$dev_dir/dot-files/fish/functions/GL.fish                     ~/.config/fish/functions/GL.fish
ln -sf ~/dev/$dev_dir/dot-files/fish/functions/GS.fish                     ~/.config/fish/functions/GS.fish
ln -sf ~/dev/$dev_dir/dot-files/fish/functions/H.fish                      ~/.config/fish/functions/H.fish
ln -sf ~/dev/$dev_dir/dot-files/fish/functions/P.fish                      ~/.config/fish/functions/P.fish
ln -sf ~/dev/$dev_dir/dot-files/fish/functions/V.fish                      ~/.config/fish/functions/V.fish

ln -sf ~/dev/$dev_dir/dot-files/helix/config.toml ~/.config/helix/config.toml

ln -sf ~/dev/$dev_dir/dot-files/kitty/Catppuccin-Mocha.conf ~/.config/kitty/Catppuccin-Mocha.conf

ln -sf ~/dev/$dev_dir/dot-files/kitty/kitty.conf ~/.config/kitty/kitty.conf

if $is_linux
    ln -sf ~/dev/$dev_dir/dot-files/fish/config-linux.fish ~/.config/fish/config.fish
    ln -sf ~/dev/$dev_dir/dot-files/.gitconfig-linux       ~/.gitconfig
    ln -sf ~/dev/$dev_dir/dot-files/lazygit/config.yml     ~/config/lazygit/config.yml
else
    ln -sf ~/dev/$dev_dir/dot-files/fish/config.fish                    ~/.config/fish/config.fish
    ln -sf ~/dev/$dev_dir/dot-files/.gitconfig                          ~/.gitconfig
    ln -sf ~/dev/$dev_dir/dot-files/kitty/macos-launch-services-cmdline ~/.config/kitty/macos-launch-services-cmdline
    ln -sf ~/dev/$dev_dir/dot-files/lazygit/config.yml                  ~/Library/Application\ Support/lazygit/config.yml
end
