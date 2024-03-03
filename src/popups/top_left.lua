local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")
local dpi = require("beautiful").xresources.apply_dpi

local M = {}



function M.init(screen)
    local top_right = awful.popup({
        widget = wibox.container.background,
        ontop = false,
        bg = "#808080",
        opacity = 0.5,
        visible = true,
        screen = screen,
        placement = function(drawable)
            awful.placement.top_left(
                drawable,
                {
                    margins = dpi(10, screen)
                }
            )
        end,
        shape = function(cr, width, height)
            gears.shape.rounded_rect(cr, width, height, 5)
        end
    })

    top_right:setup({
        layout = wibox.layout.align.horizontal,
        {
            layout = wibox.layout.fixed.horizontal,
            wibox.widget.textclock(),
        },
    })
end

return M
