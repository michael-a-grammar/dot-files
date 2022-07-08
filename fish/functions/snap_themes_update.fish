function snap_themes_update
    set --local snaps_with_icon_themes (snap connections | grep gtk-common-themes:icon-themes | awk '{print $2}')
    set --local snaps_with_gtk_themes (snap connections | grep gtk-common-themes:gtk-3-themes | awk '{print $2}')

    for snap in $snaps_with_icon_themes
        sudo snap connect $snap cursor-theme-catppuccin:icon-themes
    end

    for snap in $snaps_with_gtk_themes
      sudo snap connect $snap cursor-theme-catppuccin:icon-themes
    end
end
