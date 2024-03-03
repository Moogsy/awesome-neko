local beautiful = require("beautiful")

local error_handler = require("src.core.errors")
error_handler.init()

local theme = require("starry.theme")
beautiful.init(theme)

local signals_handlers = require("src.handlers.init")
signals_handlers.init()

local auto_starter = require("src.core.auto_starter")
auto_starter.init()

