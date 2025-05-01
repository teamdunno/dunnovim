return {
    {
        "neovim/nvim-lspconfig",
        ft = "zig",
        opts = {
            servers = {
                zls = {},
            },
        },
    },

    {
        "stevearc/conform.nvim",
        ft = "zig",
        opts = function(_, opts)
            opts.formatters_by_ft = opts.formatters_by_ft or {}
            opts.formatters_by_ft.zig = { "zigfmt" }
            return opts
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            parsers = {
                zig = {},
            },
        },
    },
}
