-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- bindings
config.keys = {
	{ key = "\\", mods = "CTRL", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
	{ key = "\\", mods = "ALT", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
	{ key = "LeftArrow", mods = "CTRL", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
	{ key = "RightArrow", mods = "CTRL", action = wezterm.action({ ActivatePaneDirection = "Right" }) },
	{ key = "UpArrow", mods = "CTRL", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
	{ key = "DownArrow", mods = "CTRL", action = wezterm.action({ ActivatePaneDirection = "Down" }) },
	{ key = "RightArrow", mods = "ALT|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Right", 1 } }) },
	{ key = "LeftArrow", mods = "ALT|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Left", 1 } }) },
	{ key = "DownArrow", mods = "ALT|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Down", 1 } }) },
	{ key = "UpArrow", mods = "ALT|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Up", 1 } }) },

	{ key = "n", mods = "ALT", action = wezterm.action.SpawnTab("CurrentPaneDomain") },
	{ key = "w", mods = "ALT", action = wezterm.action.CloseCurrentTab({ confirm = false }) },
	{
		key = "Enter",
		mods = "ALT",
		action = wezterm.action.TogglePaneZoomState,
	},
}

-- tab bar
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.show_tab_index_in_tab_bar = true
config.switch_to_last_active_tab_when_closing_tab = true

-- window
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
config.adjust_window_size_when_changing_font_size = false

-- font
config.font = wezterm.font("Hack Nerd Font Mono", { italic = false })
config.font_rules = {
	{
		italic = true,
		font = wezterm.font("Hack Nerd Font Mono", { italic = false }), -- Match the main font configuration
	},
}
config.font_size = 17

-- theme
-- TODO

-- Windows specific config
if wezterm.target_triple:find("windows") then
	config.default_domain = "WSL:Debian"
else
	config.window_decorations = "RESIZE"
end


-- and finally, return the configuration to wezterm
return config
