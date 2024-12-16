-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.tab_bar_at_bottom = true
config.color_scheme = 'Dracula (Official)'
config.font = wezterm.font('CaskaydiaCove Nerd Font', { weight = 'Regular', italic = false })
config.font_size = 13.0
config.window_background_opacity = 0.95

-- Vi-inspired tab switching :)
config.keys = {
  -- Turn off the default CMD-m Hide action, allowing CMD-m to
  -- be potentially recognized and handled by the tab
  {
    key = 'l',
    mods = 'CTRL|ALT',
    action = act.ActivateTabRelative(1),
  },
  {
    key = 'h',
    mods = 'CTRL|ALT',
    action = act.ActivateTabRelative(-1),
  },
}

-- and finally, return the configuration to wezterm
return config
