-- Keybindings

local mainMod = "SUPER"

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. "+ SHIFT + B", hl.dsp.exec_cmd(firefox))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(reload))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(change_wallpaper))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(launcher))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd(lock))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen("maximized", "toggle"))

local closeWindowBind = hl.bind(mainMod .. " + Q", hl.dsp.window.close())

-- screenshot
hl.bind("PRINT", hl.dsp.exec_cmd(region_screenshot))
hl.bind(mainMod .. " + PRINT", hl.dsp.exec_cmd(full_screenshot))

-- hl.bind(
-- 	mainMod .. " + Escape",
-- 	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
-- )

hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))

hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

for i = 1, 10 do
	local key = i % 10
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind(mainMod .. " + G", function()
	local game_mode = (hl.get_config("animations.enabled") == false)

	if game_mode then
		hl.exec_cmd("hyprctl reload")
		return
	end

	hl.config({
		general = {
			gaps_in = 0,
			gaps_out = 0, -- Disable gaps
			border_size = 0,
		},

		animations = {
			enabled = false, -- Disable animations
		},

		-- Disable blur, shadow and window rounding
		decoration = {
			shadow = { enabled = false },
			blur = { enabled = false },
			rounding = 0,
		},
	})
end)

hl.bind(mainMod .. " + tab", function()
	local layouts = { "scrolling", "dwindle", "master", "monocle" }
	local workspace = hl.get_active_workspace()
	if hl.get_active_special_workspace() then
		workspace = hl.get_active_special_workspace()
	end

	local next_layout = "dwindle"

	if not workspace then
		return
	end

	for i = 1, #layouts do
		if layouts[i] == workspace.tiled_layout then
			local next_layout_idx = (i % #layouts) + 1
			next_layout = layouts[next_layout_idx]
			break
		end
	end

	if workspace.special then
		hl.workspace_rule({ workspace = tostring(workspace.name), layout = next_layout })
	else
		hl.workspace_rule({ workspace = tostring(workspace.id), layout = next_layout })
	end
end)

local MAX_ZOOM = 3
local MIN_ZOOM = 1
local ZOOM_TOGGLE_FACTOR = 1.5

---@param offset number
---@return nil
local function zoom(offset)
	local current = hl.get_config("cursor.zoom_factor")
	if offset ~= nil then
		current = current + offset
	elseif current ~= MIN_ZOOM then
		current = MIN_ZOOM
	else
		current = ZOOM_TOGGLE_FACTOR
	end
	current = math.max(MIN_ZOOM, math.min(MAX_ZOOM, current))
	hl.config({ cursor = { zoom_factor = current } })
end

hl.bind(mainMod .. " + Z", zoom)
hl.bind(mainMod .. " + KP_ADD", function()
	zoom(0.5)
end)
hl.bind("SUPER + minus", function()
	zoom(-0.5)
end)
