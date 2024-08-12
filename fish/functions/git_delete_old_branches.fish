function git_delete_old_branches
    if git checkout (git_main_or_master)
        for branch in (git branch)
            if not string match --regex --quiet "(.*(?<main_or_master>main|master))" $branch
                git branch -D (string trim $branch)
            end
        end
    end
end
