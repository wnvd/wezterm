-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action -- this table will hold the configuration
local config = {}
-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- check for updates
config.check_for_updates = true
config.check_for_updates_interval_seconds = 86400

--  Now here applying your configuration

-- scroll keys
config.keys = {
    { key = 'UpArrow',   mods = 'SHIFT', action = act.ScrollByLine(-5) },
    { key = 'DownArrow', mods = 'SHIFT', action = act.ScrollByLine(5) },
}
config.max_fps = 60
-- config.color_scheme = 'Muse (terminal.sexy)'
-- colorscheme (goes well with gruvbox 'trasparent mode = true')
-- config.color_scheme = 'Oxocarbon Dark (Gogh)'
config.color_scheme = 'Adventure'
config.colors = {
    -- background = "#0a0d0f", -- subtle black
    cursor_bg = '#FFFF00',
    cursor_fg = 'black',
    cursor_border = '#FFFF00',
}

config.underline_thickness = '2.0'

config.initial_cols = 80
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
config.font_size = 13.0
config.cell_width = 1.00

-- Some 'mono' fonts make icons in terminal look smaller.
config.font = wezterm.font(
    -- 'Debugger Nerd Font',
    -- 'Victor Mono Nerd Font',
    -- 'DankMono Nerd Font',
    'MapleMono NF',
    -- 'JetBrainsMono Nerd Font',
    {
        weight = 'Regular',
        italic = false,
    }
)


config.harfbuzz_features = {
    -- universal ligatures on/off
    'calt=1',
    'clig=1',
    'liga=1',
    -- 'zero',
    -- 'cv14',
    -- Maple Mono
    'cv01', -- Maple Mono: # $ & % ->
    -- 'cv04', -- l
    'calt', -- Maple Mono: connected cursive
    'cv02', -- Maple Mono: a 
    'cv35', -- Maple Mono: l is cursive
    'cv09', -- Maple Mono: 7
    'cv10', -- Maple Mono: ZZ, JetBrains Mono: g,t
    'cv31', -- Maple Mono: a
    'cv65', -- Maple Mono: &
    -- Stylistic Sets
    'ss11', -- Maple Mono: |=
}

config.default_workspace = "home"

-- does not notify if font does not support "some" glyph
config.warn_about_missing_glyphs = false

config.tab_bar_at_bottom = true
config.freetype_load_target = 'Normal'
config.freetype_render_target = 'HorizontalLcd'
config.freetype_load_flags = 'NO_HINTING' -- this does somthing to fonts
-- and finally, return the configuration to wezterm
return config
