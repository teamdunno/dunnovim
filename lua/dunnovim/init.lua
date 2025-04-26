local M = {}
require("dunnovim.utils")

---@param settings dunnovim.Settings The user's settings
function M.postsetup(settings)
    vim.cmd.colorscheme(settings.ui.theme)

    if DunnoVim.plugins.has("lualine.nvim") then
        local lualine_config = DunnoVim.plugins.opts("lualine.nvim")
        require("lualine").setup(lualine_config)
    end

    if DunnoVim.plugins.has("mini.statusline") then
        local mini_statusline_config = DunnoVim.plugins.opts("mini.statusline")
        require("mini.statusline").setup(mini_statusline_config)
    end
end

function M.setup(opt)
    require("dunnovim.vimsettings")
    require("custom")

    local settings = DunnoVim.config.get_config()

    vim.api.nvim_create_autocmd("User", {
        pattern = "VeryLazy",
        callback = function()
            M.postsetup(settings)
        end,
    })
end

return M
