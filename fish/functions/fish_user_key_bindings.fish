function fish_user_key_bindings
  fish_vi_key_bindings

  bind \x7F backward-kill-word
  bind / '_fzf_search_history'
  bind \? '_fzf_search_directory'

  fzf_configure_bindings \
    --directory=\cf      \
    --history=\cs        \
    --git_log=\cl        \
    --git_status=\cg     \
    --processes=\cp
end
