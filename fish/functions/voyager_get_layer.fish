function voyager_get_layer
    set -l kontroll_status (kontroll status 2>&1)

    if test (string match --entire 'Keymapp socket not found' $kontroll_status)
        echo 'Keymapp not running'
    else if test (string match --entire 'No keyboard connected' $kontroll_status)
        echo 'No keyboard connected'
    else if string match --regex --quiet '.*Current layer:\s+(?<current_layer>\d+)' $kontroll_status
        echo $current_layer
    else
        echo 'Unknown response from Kontroll'
    end
end
