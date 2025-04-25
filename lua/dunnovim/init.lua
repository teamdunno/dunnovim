local M = {}
require("dunnovim.utils")

---@param settings dunnovim.Settings The user's settings
function M.postsetup(settings)
    vim.cmd.colorscheme(settings.ui.theme)

    local lualine_config = {
        sections = {
            lualine_a = { "mode" },
            lualine_b = { "branch", "diff" },
            lualine_c = { "filename" },
            lualine_x = { "encoding", "filetype" },
            lualine_y = { "progress" },
            lualine_z = { "location" },
        },
    }

    lualine_config = vim.tbl_deep_extend("keep", lualine_config, settings.ui.lualine.override)

    require("lualine").setup(lualine_config)
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
