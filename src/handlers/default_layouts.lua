local awful = require("awful")
local beautiful = require("beautiful")
local theme = beautiful.get()

tag.connect_signal(
    "request::default_layouts",
    function()
        awful.layout.append_default_layouts(theme.layouts)
    end
)
