return {
    {
        "neovim/nvim-lspconfig",
        ft = "python",
        opts = {
            servers = {
                pyright = {},
                ruff = {},
            },
        },
    },

    {
        "stevearc/conform.nvim",
        ft = "python",
        opts = function(_, opts)
            opts.formatters_by_ft = opts.formatters_by_ft or {}
            table.insert(opts.formatters_by_ft, {
                python = { "ruff" },
            })
            return opts
        end,
    },

    {
        "linux-cultist/venv-selector.nvim",
        dependencies = {
            "neovim/nvim-lspconfig",
            -- { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
        },
        branch = "regexp", -- This is the regexp branch, use this for the new versions
        ft = "python",
        keys = {
            { ",v", "<cmd>VenvSelect<cr>" },
        },
        ---@type venv-selector.Config
        opts = {},
        cond = vim.loop.os_uname().sysname ~= "Windows_NT",
    },
}
