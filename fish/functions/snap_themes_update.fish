function snap_themes_update
    set --local snaps (snap connections | grep gtk-common-themes:icon-themes | awk '{print $2}')

    for snap in $snaps
        sudo snap connect $snap cursor-theme-catppuccin:icon-themes
    end
end
