function abbreviations
  abbr --add d '~/dev'
  abbr --add h '~/'
  abbr --add u '~/.config'

  abbr --add c 'clear'
  abbr --add k 'kitty @'
  abbr --add l 'lazygit'
  abbr --add v 'nvim'

  abbr --add cat  'bat'
  abbr --add crg  'batgrep'
  abbr --add diff 'batdiff'

  abbr --add g  'git'
  abbr --add ga 'git add .'
  abbr --add gc 'git commit -m'
  abbr --add gf 'git pull'
  abbr --add go 'git checkout'
  abbr --add gp 'git push'

  abbr --add gs   'colorls --git-status'
  abbr --add ls   'colorls -A --sort-dirs'
  abbr --add tree 'colorls -A --tree'

  abbr --add dc 'docker-compose --profile host up'
  abbr --add dp 'docker system prune --all --force'

  abbr --add ef 'mix format'
  abbr --add ei 'iex -S mix'
  abbr --add ep 'iex -S mix phx.server'
  abbr --add es 'mix setup'
  abbr --add eu 'mix deps.get'

  abbr --add cb 'cargo build'
  abbr --add cc 'cargo check'
  abbr --add cr 'cargo run'
  abbr --add ct 'cargo make test'
end
