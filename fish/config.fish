if status is-interactive
  starship init fish | source
  source /opt/homebrew/opt/asdf/libexec/asdf.fish
  source "$__fish_config_dir/fzf-base16-tomorrow-night.fish"
  abbreviations
end
