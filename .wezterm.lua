-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.font = wezterm.font("Hack Nerd Font Mono")
config.font_size = 20.0

-- For example, changing the color scheme:
config.color_scheme = 'Dracula'

-- Hide the tab bar
config.enable_tab_bar = false
config.window_decorations = "TITLE | RESIZE"

config.window_background_opacity = 0.6
config.macos_window_background_blur = 10

-- Full screen mode is same as macOS full screen
config.keys = {
  {
    key = 'f',
    mods = 'CMD|CTRL',
    action = wezterm.action.ToggleFullScreen,
  },
}

-- and finally, return the configuration to wezterm
return config
