if status is-interactive
    starship init fish | source
    abbreviations
end

source ~/.asdf/asdf.fish

set -gx HOMEBREW_PREFIX "/home/linuxbrew/.linuxbrew"
set -gx HOMEBREW_CELLAR "/home/linuxbrew/.linuxbrew/Cellar"
set -gx HOMEBREW_REPOSITORY "/home/linuxbrew/.linuxbrew/Homebrew"

set -q MANPATH; or set MANPATH ''
set -gx MANPATH "/home/linuxbrew/.linuxbrew/share/man" $MANPATH

set -q INFOPATH; or set INFOPATH ''
set -gx INFOPATH "/home/linuxbrew/.linuxbrew/share/info" $INFOPATH
