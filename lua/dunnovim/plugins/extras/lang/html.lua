return {
    {
        "neovim/nvim-lspconfig",
        ft = "html",
        opts = {
            servers = {
                html = {},
            },
        },
    },

    {
        "stevearc/conform.nvim",
        ft = "html",
        opts = function(_, opts)
            opts.formatters_by_ft = opts.formatters_by_ft or {}
            opts.formatters_by_ft.html = { "prettier" }
            return opts
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            parsers = {
                html = {},
            },
        },
    },
}
