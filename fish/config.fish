eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

if status is-interactive
    starship init fish | source

    abbreviations
    fzf_configure
end

if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end

set --erase _asdf_shims
