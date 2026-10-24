-- Autostart
-- Add your startup commands here.

-- Example:
hl.on("hyprland.start", function()
	-- topbar
	hl.exec_cmd("~/.config/quickshell/fianchetto/start.sh")
	-- hl.exec_cmd("waybar &")

	hl.exec_cmd("hyprpaper &")
	hl.exec_cmd("nm-applet &")
	hl.exec_cmd("dunst &")
	hl.exec_cmd("waypaper --restore")
	hl.exec_cmd("hypridle")

	hl.exec_cmd("wal -i ~/.cache/wal/wal -q")

	-- clipboard
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")
end)
