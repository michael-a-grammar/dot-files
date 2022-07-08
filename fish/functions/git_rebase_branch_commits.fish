function git_rebase_branch_commits
    git rebase -i HEAD~(git_commits_ahead_of_main)
end
