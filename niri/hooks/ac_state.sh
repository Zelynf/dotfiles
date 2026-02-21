if cat /sys/class/power_supply/AC/online | grep 1; then 
    awcc p >/dev/null 2>&1 && niri msg output eDP-1 mode 2560x1600@240.024 # && sudo auto-cpufreq --force=reset;
else 
    awcc bs >/dev/null 2>&1 && niri msg output eDP-1 mode 2560x1600@60.012 # && sudo auto-cpufreq --force=powersave;
fi
