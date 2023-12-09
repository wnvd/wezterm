local wezterm = require 'wezterm'
local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.initial_cols = 70
config.initial_rows = 20

config.line_height = 1.0 -- below 1.0 makes some font smuggy


config.window_decorations = 'NONE'
config.window_background_opacity = 1.0

config.use_fancy_tab_bar = false

config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}
config.font_size = 18.0
-- Some 'mono' fonts make icons in terminal look smaller.
config.font = wezterm.font(
    'Courier Prime Code', -- CodeNewRoman Nerd Font, SauceCodePro Nerd Font, Courier Prime Code, Anka/Coder, Rec Mono Casual
    {
        weight = 'Regular',
        italic = false,
    }
)

-- config.harfbuzz_features = { 'zero' }

config.tab_bar_at_bottom = true
config.freetype_load_target = 'HorizontalLcd'
return config
