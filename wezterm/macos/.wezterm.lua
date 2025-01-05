-- Pull in the wezterm API
local wezterm = require("wezterm")

local brightness = 0.03

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Font settings
-- config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
config.font = wezterm.font("JetBrainsMono Nerd Font Mono", { weight = "Medium", stretch = "Expanded" })
config.font_size = 19

-- Window settings
config.window_background_opacity = 0.90
config.macos_window_background_blur = 85
config.window_decorations = "RESIZE"
config.enable_tab_bar = false

-- Image settings
config.window_background_image = "/Users/vnphuong16/Dropbox/Pictures/Wallpaper/56.jpg"
config.window_background_image_hsb = {
    -- Darken the background image by reducing it
    brightness = brightness,
    hue = 1.0,
    saturation = 0.8,
}

-- Color scheme settings
config.color_scheme = "Tokyo Night"

-- Keys
config.keys = {
    {
        key = 'n',
        mods = 'SHIFT|CTRL',
        action = wezterm.action.ToggleFullScreen,
    },
}

config.default_cursor_style = "BlinkingUnderline"
config.cursor_thickness = 2

-- and finally, return the configuration to wezterm
return config