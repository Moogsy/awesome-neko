local awful = require("awful")
local beautiful = require("beautiful")
local gears = require("gears")

local theme = beautiful.get()

local shortcuts = require("keybinds.shortcuts")
local keys = gears.table.join(
    require("keybinds.tag_navigation"),
    require("keybinds.shortcuts")
)

root.keys(keys)
