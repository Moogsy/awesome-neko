local awful = require("awful")
local beautiful = require("beautiful")
local theme = beautiful.get()

return {
    init = function()
        for _, t in ipairs(theme.auto_start) do
            awful.spawn(t)
        end
    end
}


