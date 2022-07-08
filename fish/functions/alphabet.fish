function alphabet
    for int in (seq 97 122)
        printf "\u$(printf "%x" $int) "
    end
end
