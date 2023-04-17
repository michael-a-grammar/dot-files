function V --wraps=_fzf_search_variables --description 'alias V _fzf_search_variables'
  _fzf_search_variables (set --show | psub) (set --names | psub)
end
