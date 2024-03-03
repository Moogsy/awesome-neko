local awful = require("awful")
local wibox = require("wibox")
local dpi = require("beautiful").xressources.apply_dpi
local M = {}

function M.init(screen, user_settings)
    local top_right = awful.popup({
        widget = wibox.container.background,
        ontop = false,
        visible = false,
        screen = screen,
        placement = function(c)
            awful.placement.top_right(
                c,
                { margins = dpi(10) }
            )
        end,
    })

end


return M
