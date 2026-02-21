if wpctl get-volume @DEFAULT_SINK@ | rg [MUTED]; then
    brightnessctl set 100% --device platform::mute;
else 
    brightnessctl set 0% --device platform::mute;
fi
