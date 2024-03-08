local M = {}

function M.map(list, fn)
    for i = 1, #list do
        list[i] = fn(list[i])
    end
end

return M
