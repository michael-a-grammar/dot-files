function git_reset_branch_changes
    git reset --mixed (git log --first-parent (git_main_or_master) --format=%H -n 1)
end
