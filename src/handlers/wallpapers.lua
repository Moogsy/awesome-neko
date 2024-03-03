local awful = require("awful")
local beautiful = require("beautiful")
local wibox = require("wibox")

screen.connect_signal(
    "request::wallpaper",
    function(screen)
        awful.wallpaper({
            screen = screen,
            widget = {
                {
                    image     = beautiful.wallpaper,
                    upscale   = true,
                    downscale = true,
                    widget    = wibox.widget.imagebox,
                },
                valign = "center",
                halign = "center",
                tiled  = false,
                widget = wibox.container.tile,
            }
        })
    end
)
