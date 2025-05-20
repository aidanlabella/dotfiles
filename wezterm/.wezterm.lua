-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.tab_bar_at_bottom = true
config.color_scheme = 'OneDark (base16)'
config.font = wezterm.font('CodeNewRoman Nerd Font', { weight = 'Regular', italic = false })
config.font_size = 14.5
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
  {
    key = 't',
    mods = 'CTRL|ALT',
    action = act.SpawnTab 'CurrentPaneDomain',
  },
  {
    key = 'w',
    mods = 'CTRL|ALT',
    action = wezterm.action.CloseCurrentTab { confirm = false },
  },
}

local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
bar.apply_to_config(config,
  {
      position = "bottom",
      max_width = 32,
      padding = {
        left = 1,
        right = 1,
        tabs = {
          left = 0,
          right = 2,
        },
      },
      separator = {
        space = 1,
        left_icon = wezterm.nerdfonts.md_drag_vertical_variant,
        right_icon = wezterm.nerdfonts.md_drag_vertical_variant,
        field_icon = wezterm.nerdfonts.indent_line,
      },
      modules = {
        tabs = {
          active_tab_fg = 4,
          inactive_tab_fg = 6,
          new_tab_fg = 2,
        },
        workspace = {
            enabled = false
        },
        leader = {
          enabled = true,
          icon = wezterm.nerdfonts.oct_rocket,
          color = 2,
        },
        hostname = {
          enabled = true,
          icon = wezterm.nerdfonts.cod_server,
          color = 8,
        },
        username = {
            enabled = false
        },
        clock = {
          enabled = true,
          icon = wezterm.nerdfonts.md_calendar_clock,
          format = "%H:%M",
          color = 5,
        },
        cwd = {
            enabled = false
        },
      },
  }
)


-- and finally, return the configuration to wezterm
return config
