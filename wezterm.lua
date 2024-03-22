-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action -- this table will hold the configuration
local config = {}
-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end

--  Now here applying your configuration

-- scroll keys
config.keys = {
    { key = 'UpArrow',   mods = 'SHIFT', action = act.ScrollByLine(-5) },
    { key = 'DownArrow', mods = 'SHIFT', action = act.ScrollByLine(5) },
}
-- colorscheme (goes well with gruvbox 'trasparent mode = true')
-- config.color_scheme = 'Oxocarbon Dark (Gogh)'
config.colors = {
    background = "#0a0d0f", -- subtle black
    cursor_bg = '#FFFF00',
    cursor_fg = 'black',
    cursor_border = '#FFFF00',
}
config.underline_thickness = '2.0'

config.initial_cols = 70
config.initial_rows = 20

config.line_height = 1.0 -- below 1.0 makes some font smuggy


config.window_decorations = 'NONE'
config.window_background_opacity = 1.0

-- default is true, has more 'native' look
config.use_fancy_tab_bar = false
config.status_update_interval = 1000

config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}
config.font_size = 17.0
config.cell_width = 1.00

-- Some 'mono' fonts make icons in terminal look smaller.
config.font = wezterm.font(
    'Debugger',
    {
        weight = 'Regular',
        italic = false,
    }
)

config.harfbuzz_features = {
    -- universal ligatures on/off
    'calt=0',
    'clig=0',
    'liga=0',
    'zero',
}

config.default_workspace = "home"

config.tab_bar_at_bottom = true
config.freetype_load_target = 'HorizontalLcd'
-- and finally, return the configuration to wezterm
return config
