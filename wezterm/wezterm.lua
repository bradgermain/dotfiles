-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE", -- disable the title bar but enable the resizable border
	default_cursor_style = "BlinkingBar",
	color_scheme = "Nord (Gogh)",
	font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
	font_size = 12.5,
	window_padding = {
    		left = 3,
    		right = 3,
      		top = 0,
    		bottom = 0,
  	},
	background = {
	    {
	      source = {
		File = "/Users/bradgermain/Projects/dotfiles/images/Black_GreenSlashes.jpg",
	      },
	      hsb = {
		hue = 1.0,
		saturation = 1.02,
		brightness = 0.25,
	      },
	      width = "100%",
	      height = "100%",
	    },
	    {
	      source = {
		Color = "#282c35",
	      },
	      width = "100%",
	      height = "100%",
	      opacity = 0.55,
	    },
  	},
}

-- and finally, return the configuration to wezterm
return config
