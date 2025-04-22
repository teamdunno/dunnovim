return {
    {
        "neovim/nvim-lspconfig",
        ft = "python",
        opts = {
            servers = {
                pyright = {},
                ruff = {}
            },
        },
    },


    {
        "stevearc/conform.nvim",
        opts = function(_, opts)
            opts.formatters_by_ft = opts.formatters_by_ft or {}
            table.insert(opts.formatters_by_ft, {
                python = { "ruff" }
            })
            return opts
        end
    }
}
