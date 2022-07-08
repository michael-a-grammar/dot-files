function git_main_or_master
    for branch in (git branch)
        string match --regex --quiet '(.*(?<main_or_master>main|master))' $branch

        if string length --quiet $main_or_master
            echo $main_or_master
        end
    end
end
