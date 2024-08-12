function git_fetch_main
    set -l branch (git_main_or_master)

    git fetch origin $branch:$branch
end
