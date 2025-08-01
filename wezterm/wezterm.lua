-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.default_prog = { 'pwsh.exe', '-NoLogo' }
config.font = wezterm.font('IosevkaTerm Nerd Font', { weight = 'Light', stretch = 'Normal', style = 'Normal' })
config.font_size = 14.0
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }

config.background = {
  {
    source = {
      File = 'C:/Users/joard/AppData/Local/nvim/wezterm/Ken_Kaneki.jpg',
    },
    hsb = {
      -- Darken the background image
      brightness = 0.02,
      -- You can adjust the hue by scaling its value.
      -- a multiplier of 1.0 leaves the value unchanged.
      hue = 1.0,
      -- You can adjust the saturation also.
      saturation = 1.0,
    },
    vertical_align = 'Middle',
  },
}

-- The filled in variant of the < symbol
local SOLID_LEFT_ARROW = wezterm.nerdfonts.pl_right_hard_divider

-- The filled in variant of the > symbol
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider

config.keys = {
  {
    key = 'v',
    mods = 'CTRL',
    action = wezterm.action.PasteFrom 'Clipboard',
  },
}

config.colors = {
  cursor_bg = '#cdcdd8',
  cursor_fg = 'black',
  selection_fg = 'black',
  selection_bg = '#ec4a90',
  foreground = '#6a7899',
  background = '#000000',

  ansi = {
    '#000000', -- black
    '#ec4a90', -- red
    '#54e0aa', -- green
    '#84e488', -- yellow
    '#406aa6', -- blue
    '#9446b0', -- purplish
    '#56e8f8', -- cyan
    '#6a7899', -- white
  },
  brights = {
    '#4d5679', -- grey
    '#a81a58', -- red
    '#54e0aa', -- green
    '#f8b57a', -- yellow
    '#4aa9e8', -- blue
    '#dd80fd', -- purplish
    '#56e8f8', -- cyan
    '#cdcdd8', -- white
  },

  tab_bar = {
    -- The color of the strip that goes along the top of the window
    -- (does not apply when fancy tab bar is in use)
    background = '#040008',

    -- The active tab is the one that has focus in the window
    active_tab = {
      -- The color of the background area for the tab
      bg_color = '#2b2042',
      -- The color of the text for the tab
      fg_color = '#c0c0c0',

      -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
      -- label shown for this tab.
      -- The default is "Normal"
      intensity = 'Normal',

      -- Specify whether you want "None", "Single" or "Double" underline for
      -- label shown for this tab.
      -- The default is "None"
      underline = 'None',

      -- Specify whether you want the text to be italic (true) or not (false)
      -- for this tab.  The default is false.
      italic = false,

      -- Specify whether you want the text to be rendered with strikethrough (true)
      -- or not for this tab.  The default is false.
      strikethrough = false,
    },

    -- Inactive tabs are the tabs that do not have focus
    inactive_tab = {
      bg_color = '#1b1032',
      fg_color = '#808080',

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `inactive_tab`.
    },

    -- You can configure some alternate styling when the mouse pointer
    -- moves over inactive tabs
    inactive_tab_hover = {
      bg_color = '#3b3052',
      fg_color = '#909090',
      italic = true,

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `inactive_tab_hover`.
    },

    -- The new tab button that let you create new tabs
    new_tab = {
      bg_color = '#1b1032',
      fg_color = '#808080',

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `new_tab`.
    },

    -- You can configure some alternate styling when the mouse pointer
    -- moves over the new tab button
    new_tab_hover = {
      bg_color = '#3b3052',
      fg_color = '#909090',
      italic = true,

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `new_tab_hover`.
    },
  },
}

config.window_background_opacity = 0.96
config.use_fancy_tab_bar = true
config.tab_and_split_indices_are_zero_based = true
config.enable_tab_bar = true
config.window_decorations = 'RESIZE | TITLE'

config.window_frame = {
  inactive_titlebar_bg = '#353535',
  active_titlebar_bg = '#2b2042',
  inactive_titlebar_fg = '#cccccc',
  active_titlebar_fg = '#ffffff',
  inactive_titlebar_border_bottom = '#2b2042',
  active_titlebar_border_bottom = '#2b2042',
  button_fg = '#cccccc',
  button_bg = '#2b2042',
  button_hover_fg = '#ffffff',
  button_hover_bg = '#3b3052',
}
--[[
config.tab_bar_style = {
	active_tab_left = wezterm.format({
		{ Background = { Color = "#0b0022" } },
		{ Foreground = { Color = "#2b2042" } },
		{ Text = SOLID_LEFT_ARROW },
	}),
	active_tab_right = wezterm.format({
		{ Background = { Color = "#0b0022" } },
		{ Foreground = { Color = "#2b2042" } },
		{ Text = SOLID_RIGHT_ARROW },
	}),
	inactive_tab_left = wezterm.format({
		{ Background = { Color = "#0b0022" } },
		{ Foreground = { Color = "#1b1032" } },
		{ Text = SOLID_LEFT_ARROW },
	}),
	inactive_tab_right = wezterm.format({
		{ Background = { Color = "#0b0022" } },
		{ Foreground = { Color = "#1b1032" } },
		{ Text = SOLID_RIGHT_ARROW },
	}),
}
--]]

-- and finally, return the configuration to wezterm
return config
