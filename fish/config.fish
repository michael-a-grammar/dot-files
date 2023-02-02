if status is-interactive
  starship init fish | source
  source /opt/homebrew/opt/asdf/libexec/asdf.fish
  source "$__fish_config_dir/fzf-base16-tomorrow-night.fish"
  abbreviations

  if set -q KITTY_INSTALLATION_DIR
    set --global KITTY_SHELL_INTEGRATION enabled
    source "$KITTY_INSTALLATION_DIR/shell-integration/fish/vendor_conf.d/kitty-shell-integration.fish"
    set --prepend fish_complete_path "$KITTY_INSTALLATION_DIR/shell-integration/fish/vendor_completions.d"
  end
end
