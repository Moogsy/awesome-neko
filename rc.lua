local beautiful = require("beautiful")
local user_settings = require("settings")


local error_handler = require("src.core.errors")
error_handler.init()

local theme = require("starry.theme")
beautiful.init(theme)

local handlers = require("src.handlers.init")
handlers.init(user_settings)

