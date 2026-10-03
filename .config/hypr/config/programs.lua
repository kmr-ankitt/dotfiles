-- Programs
terminal = "wezterm"
browser = "brave"
firefox = "firefox"
fileManager = "thunar"
menu = "hyprlauncher"
reload = "hyprctl reload && killall -SIGUSR2 waybar"
change_wallpaper = "waypaper --random"
launcher = "hyprlauncher"
lock = "hyprlock"
region_screenshot =
	'grim -g "$(slurp)" - | wl-copy && wl-paste > ~/Pictures/Screenshots/Screenshot-$(date +%F_%T).png && dunstify "Screenshot of the region taken" -t 1000'
full_screenshot =
	'grim - | wl-copy && wl-paste > ~/Pictures/Screenshots/Screenshot-$(date +%F_%T).png && dunstify "Screenshot of whole screen taken" -t 1000'
