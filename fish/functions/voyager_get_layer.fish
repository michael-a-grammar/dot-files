function voyager_get_layer
    set --local kontroll_status (kontroll status 2>&1)

    if test (string match --entire 'Keymapp socket not found' $kontroll_status)
        echo 'Keymapp not running'
    else if test (string match --entire 'No keyboard connected' $kontroll_status)
        echo 'No keyboard connected'
    else if string match --regex --quiet '.*Current layer:\s+(?<current_layer>\d+)' $kontroll_status
        set --local layer_icons 󰼭 󰎐  󰥠 󰍽

        echo $layer_icons[(math $current_layer + 1)]
    else
        echo 'Unknown response from Kontroll'
    end
end
