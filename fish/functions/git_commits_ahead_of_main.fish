function git_commits_ahead_of_main
    git log --oneline (git branch --show-current) ^(git_main_or_master) | wc -l
end
