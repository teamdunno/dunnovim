---@class dunnovim.util.config
local M = {}

---@type dunnovim.Settings
M.settings = {
    ---@type dunnovim.UISettings
    ui = {
        theme = "tokyonight",
        ---@type dunnovim.LualineSettings
        lualine = {
            override = {},
        },
    },
    extras = {},
}

M.is_default = true

---Get the user's settings
---@return dunnovim.Settings settings The user's settings
function M.get_config()
    if not M.is_default then
        return M.settings
    end

    ---@type dunnovim.Settings
    local user_settings = require("custom.settings")

    M.settings = vim.tbl_deep_extend("force", M.settings, user_settings)
    M.is_default = false

    return M.settings
end

return M
