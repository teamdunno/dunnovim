---@class dunnovim.util
---@field config dunnovim.util.config
---@field plugins dunnovim.util.plugins
local M = {}

---@type dunnovim.util
_G.DunnoVim = M

setmetatable(M, {
    __index = function(self, k)
        local success, mod = pcall(require, "dunnovim.utils." .. k)
        if success then
            return mod
        end
        return rawget(self, k)
    end,
})

return M
