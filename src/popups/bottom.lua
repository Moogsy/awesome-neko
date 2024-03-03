local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")
local dpi = require("beautiful").xresources.apply_dpi

local taglist = require("src.modules.taglist")

local M = {}

function M.init(screen)
    local bottom = awful.popup({
        widget = wibox.container.background,
        ontop = false,
        bg = "#808080",
        opacity = 0.5,
        visible = true,
        screen = screen,
        placement = function(drawable)
            awful.placement.bottom(
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

    bottom:setup({
        layout = wibox.layout.align.horizontal,
        {
            layout = wibox.layout.fixed.horizontal,
            taglist.init(screen)
        }
    })
end

return M
