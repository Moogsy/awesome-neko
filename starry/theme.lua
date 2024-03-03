local awful = require("awful")
local dpi = require("beautiful.xresources").apply_dpi

-- TODO: Replace this with an util
-- Need to keep it as it is for now so that awmtt can load
-- everything properly
local install_dir = "/home/moogs/GitHub/awesome-starry/"

return {
    install_dir = install_dir,

    assets_dir = install_dir .. "assets/",
    auto_start = {
        "picom --config " .. install_dir .. "picom.conf"
    },
    border_width = dpi(0),
    font = "Victor Mono Nerd Font, bold 14",
    layouts = {
        awful.layout.suit.tile,
        awful.layout.suit.floating
    },
    useless_gap = dpi(5),
    wallpaper = install_dir .. "wallpapers/wallpaper.png",
}
