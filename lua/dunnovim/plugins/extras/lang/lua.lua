return {
    {
        "neovim/nvim-lspconfig",
        ft = "lua",
        opts = {
            servers = {
                lua_ls = {},
            },
        },
    },
    {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
            library = {
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },
    {
        "stevearc/conform.nvim",
        opts = function(_, opts)
            opts.formatters_by_ft = opts.formatters_by_ft or {}
            opts.formatters_by_ft.lua = { "stylua" }
            return opts
        end,
    },
}
