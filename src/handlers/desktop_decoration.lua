local awful = require("awful")
local beautiful = require("beautiful")
local theme = beautiful.get()

local popups = require("src.popups.init")

local function setup_tags(screen)
    awful.tag(
        {"1", "2", "3", "4", "5", "6", "7", "8", "9"},
        screen,
        theme.layouts[1]
    )
end

local function screen_decorator(screen)
    setup_tags(screen)
    popups.init(screen)
end

screen.connect_signal("request::desktop_decoration", screen_decorator)
