return {
    {
        "neovim/nvim-lspconfig",
        ft = "go",
        opts = {
            servers = {
                gopls = {},
            },
        },
    },

    {
        "stevearc/conform.nvim",
        ft = "go",
        opts = function(_, opts)
            opts.formatters_by_ft = opts.formatters_by_ft or {}
            opts.formatters_by_ft.go = { "goimports", "gofumpt" }
            return opts
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            parsers = {
                go = {},
            },
        },
    },
}
