if wpctl get-volume @DEFAULT_SOURCE@ | rg [MUTED]; then
    brightnessctl set 100% --device platform::micmute;
else 
    brightnessctl set 0% --device platform::micmute;
fi
