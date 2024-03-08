local awful = require("awful")
local beautiful = require("beautiful")
local gears = require("gears")

local theme = beautiful.get()
local modkey = theme.modkey

return gears.table.join(
    awful.key(
        { modkey },
        "#36",
        function()
            awful.spawn(theme.terminal)
        end,
        { description = "Open terminal", group = "Global keys" }
    )
)
