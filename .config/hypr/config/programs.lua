-- Programs
terminal = "wezterm"
browser = "brave"
firefox = "firefox"
fileManager = "thunar"

-- reload = "hyprctl reload && killall -SIGUSR2 waybar"
reload = "hyprctl reload"
change_wallpaper = "waypaper --random"
menu = "qs -c fianchetto ipc call launcher toggle"
lock = "hyprlock"
region_screenshot =
	'grim -g "$(slurp)" - | wl-copy && wl-paste > ~/Pictures/Screenshots/Screenshot-$(date +%F_%T).png && dunstify "Screenshot of the region taken" -t 1000'
full_screenshot =
	'grim - | wl-copy && wl-paste > ~/Pictures/Screenshots/Screenshot-$(date +%F_%T).png && dunstify "Screenshot of whole screen taken" -t 1000'
clipboard = "qs -c fianchetto ipc call picker clipboard"
emojipicker = "qs -c fianchetto ipc call picker emoji"
powermenu = ""
