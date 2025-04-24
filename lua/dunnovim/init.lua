local M = {}

function M.postsetup(settings)
    vim.cmd.colorscheme(settings.ui.theme)

    require("lualine").setup({
        sections = {
            lualine_a = { "mode" },
            lualine_b = { "branch", "diff" },
            lualine_c = { "filename" }, -- Use truncated progress
            lualine_x = { "encoding", "filetype" },
            lualine_y = { "progress" },
            lualine_z = { "location" },
        },
    })
end

function M.setup(opt)
    require("dunnovim.vimsettings")
    require("custom")

    local settings = {
        ui = {
            theme = "tokyonight",
        },
        extras = {},
    }

    local user_settings = require("custom.settings")

    settings = vim.tbl_extend("force", settings, user_settings)

    vim.api.nvim_create_autocmd("User", {
        pattern = "VeryLazy",
        callback = function()
            M.postsetup(settings)
        end,
    })
end

return M
