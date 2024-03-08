local top_left = require("src.popups.top_left")
local bottom = require("src.popups.bottom")
local top_middle = require("src.popups.top_middle")

local M = {}

function M.init(screen)
    top_left.init(screen)
    top_middle.init(screen)
    bottom.init(screen)
end

return M
