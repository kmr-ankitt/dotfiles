-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 30

-- or, changing the font size and color scheme.
config.font_size = 15
config.color_scheme = "Gruvbox Dark (Gogh)"
config.enable_wayland = true
config.window_background_opacity = 0.7
config.macos_window_background_blur = 20

config.font = wezterm.font_with_fallback({
	"FiraCode Nerd Font",
})

config.window_decorations = "NONE"
config.tab_bar_at_bottom = true

-- Finally, return the configuration to wezterm:
return config
