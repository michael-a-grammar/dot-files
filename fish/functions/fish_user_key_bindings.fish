function fish_user_key_bindings
    bind -M insert jc fish_clipboard_copy
    bind -M insert jj 'commandline -i j'
    bind -M insert jt edit_command_buffer

    bind -M insert \cR tv_shell_history
    bind -M insert \cT tv_smart_autocomplete
end
