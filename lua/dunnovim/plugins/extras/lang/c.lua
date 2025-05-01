return {
    {
        "neovim/nvim-lspconfig",
        ft = { "c", "cpp" },
        opts = {
            servers = {
                clangd = {},
            },
        },
    },

    {
        "stevearc/conform.nvim",
        ft = { "c", "cpp" },
        opts = function(_, opts)
            opts.formatters_by_ft = opts.formatters_by_ft or {}
            opts.formatters_by_ft.c = { "clang_format" }
            opts.formatters_by_ft.cpp = { "clang_format" }
            return opts
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            parsers = {
                c = {},
            },
        },
    },
}
