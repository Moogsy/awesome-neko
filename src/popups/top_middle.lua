local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")

local dpi = require("beautiful").xresources.apply_dpi

local M = {}

local popup = awful.popup({
    placement = awful.placement.top,
    widget = wibox.container.background,
    border_color = "#ffffff",
    ontop = true,
    visible = true,
    opacity = 0.5,
    input_passthrough = false
})

local tasklist = awful.widget.tasklist({
    filter = awful.widget.tasklist.filter.currenttags,
    screen = screen.primary
})


function M.init(screen)
    popup:setup({
        layout = wibox.layout.align.vertical,
        screen = screen,
        wibox.widget.textclock(),
        tasklist,
    })
end

return M
