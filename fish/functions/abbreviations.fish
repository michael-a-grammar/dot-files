function abbreviations
  abbr --add d '~/dev'
  abbr --add h '~/'
  abbr --add u '~/.config'

  abbr --add c 'clear'
  abbr --add k 'kitty @'
  abbr --add v 'nvim'
  abbr --add x 'hx .'

  abbr --add gl 'lazygit'
  abbr --add ls 'eza -a'
  
  abbr --add cat  'batcat'
  abbr --add grep 'batgrep'
  abbr --add diff 'batdiff'

  abbr --add dc 'docker-compose --profile host up'
  abbr --add dx 'docker system prune --all --force'

  abbr --add g  'git'
  abbr --add ga 'git add .'
  abbr --add gc 'git commit -m '
  abbr --add gf 'git pull'
  abbr --add go 'git checkout'
  abbr --add gp 'git push'

  abbr --add cb 'cargo build'
  abbr --add cc 'cargo check'
  abbr --add cr 'cargo run'
  abbr --add ct 'cargo make test'

  abbr --add mf 'mix format'
  abbr --add mi 'iex -S mix'
  abbr --add mp 'iex -S mix phx.server'
  abbr --add mu 'mix deps.get'
end
