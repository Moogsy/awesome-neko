local top_left = require("src.popups.top_left")
local bottom = require("src.popups.bottom")

local M = {}

function M.init(screen)
    top_left.init(screen)
    bottom.init(screen)
end

return M
