local awful = require("awful")
local beautiful = require("beautiful")
local gears = require("gears")
local utils = require("src.utils.tables")
local wibox = require("wibox")

local theme = beautiful.get()

local taglist_dir = theme.install_dir .. "assets/taglist_icons/"

local tags_icons = {
    "fire.png",
    "ice.png",
    "imaginary.png",
    "physical.png",
    "quantum.png",
    "thunder.png",
    "wind.png",

    "fire.png",
    "ice.png"
}

tags_icons = utils.map(
    tags_icons,
    function(str)
        return taglist_dir .. str
    end
)

local M = {}

function M.init(screen)
    return awful.widget.taglist({
        screen = screen,
        filter = awful.widget.taglist.filter.all,
        layout = wibox.layout.fixed.horizontal,

        widget_template = {
            widget = wibox.widget.textbox,
            create_callback = function(self, c3, index, objects)
                self.align = "center"
                self.valign = "center"
                self.markup = "-- " .. index .. " --"
            end
        }
    })
end

return M
