return {
    {
        "neovim/nvim-lspconfig",
        ft = { "svelte" },
        opts = {
            servers = {
                svelte = {},
            },
        },
    },

    {
        "stevearc/conform.nvim",
        ft = { "svelte" },
        opts = function(_, opts)
            opts.formatters_by_ft = opts.formatters_by_ft or {}
            opts.formatters_by_ft.svelte = { "prettier" }
            return opts
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            parsers = {
                svelte = {},
            },
        },
    },
}
