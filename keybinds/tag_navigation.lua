local awful = require("awful")
local beautiful = require("beautiful")
local gears = require("gears")

local theme = beautiful.get()
local modkey = theme.modkey

local keys = {}
for i = 1, 9 do
    local key = awful.key(
        { modkey },
        "#" .. i + 9,
        function()
            local screen = awful.screen.focused()
            local tag = screen.tags[i]
            if tag then
                tag:view_only()
            end
        end,
        { description = "View tag", group = "Tag" }
    )
    keys = gears.table.join(keys, key)
end

return keys
