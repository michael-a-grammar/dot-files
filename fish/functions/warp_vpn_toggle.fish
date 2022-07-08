function warp_vpn_toggle
    set --local warp_vpn_status (warp-cli --json status | jq '.status' 2>&1)

    if test (string match --entire 'Disconnected' $warp_vpn_status)
        warp-cli connect
    else if test (string match --entire 'Connected' $warp_vpn_status)
        warp-cli disconnect
    else
        echo 'Unknown response from Warp CLI'
    end
end
