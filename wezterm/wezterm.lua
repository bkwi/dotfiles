local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Gruvbox Dark (Gogh)"

config.hide_tab_bar_if_only_one_tab = true
config.native_macos_fullscreen_mode = true
-- config.font = wezterm.font 'Hack Nerd Font Mono'

config.keys = {
	-- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
	{ key = "LeftArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bb" }) },
	-- Make Option-Right equivalent to Alt-f; forward-word
	{ key = "RightArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bf" }) },
	{
		key = "f",
		mods = "CTRL|CMD",
		action = wezterm.action.ToggleFullScreen,
	},
}

config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }

return config
