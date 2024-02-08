function fish_user_key_bindings
  bind \x7F backward-kill-word
  bind \b   backward-kill-word
  bind /    '_fzf_search_history'
  bind \?   '_fzf_search_directory'
end
