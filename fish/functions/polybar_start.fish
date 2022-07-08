function polybar_start
    function append_to_log --argument-names polybar_name
        echo --- | tee -a /tmp/$polybar_name.log
    end

    function start_polybar --argument-names polybar_name
        polybar $polybar_name 2>&1 | tee -a /tmp/$polybar_name.log & disown
    end

    polybar-msg cmd quit

    set --local polybars bottom-bar top-bar

    for polybar in $polybars
        append_to_log $polybar
        start_polybar $polybar
    end

    functions --erase append_to_log
    functions --erase start_polybar
end
