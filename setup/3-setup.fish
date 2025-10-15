# asdf plugins
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin add elixir https://github.com/asdf-vm/asdf-elixir.git

asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
asdf plugin add neovim https://github.com/richin13/asdf-neovim.git
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin add pnpm https://github.com/jonathanmorley/asdf-pnpm
asdf plugin add python https://github.com/asdf-community/asdf-python.git
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin add yarn https://github.com/twuni/asdf-yarn

set -Ux KERL_BUILD_DOCS yes
set -Ux KERL_INSTALL_HTMLDOCS yes
set -Ux KERL_INSTALL_MANPAGES yes

asdf install erlang latest
asdf global erlang latest

asdf install elixir latest
asdf global elixir latest

asdf install golang latest
asdf global golang latest

asdf install neovim latest
asdf global neovim latest

asdf install nodejs latest
asdf global nodejs latest

asdf install pnpm latest
asdf global pnpm latest

asdf install python latest
asdf global python latest

asdf install ruby latest
asdf global ruby latest

asdf install yarn latest
asdf global yarn latest
