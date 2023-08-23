local wezterm = require 'wezterm'
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_schemes = {
	['Batman'] = {
		background = 'black'
	}
}

config.window_decorations = 'NONE'
config.window_background_opacity = 1.0

config.use_fancy_tab_bar = false

config.window_padding = {
	left = 5,
	right = 5,
	top = 5,
	bottom = 5,
}

config.font_size = 15.0
config.font = wezterm.font(
	'SauceCodePro Nerd Font Mono',
--	'IntoneMono Nerd Font Mono',
--	'BlexMono Nerd Font Mono',
	{
		weight = 'Regular',
		italic = false,
	}
)


config.tab_bar_at_bottom = true
config.freetype_load_target = 'HorizontalLcd'
return config
