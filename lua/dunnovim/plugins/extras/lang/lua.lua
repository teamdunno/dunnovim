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
    {
        "neovim/nvim-lspconfig",
        ft = { "javascript", "javascriptreact" },
        opts = {
            servers = {
                ts_ls = {},
            },
        },
    },

    {
        "stevearc/conform.nvim",
        ft = { "javascript", "javascriptreact" },
        opts = function(_, opts)
            opts.formatters_by_ft = opts.formatters_by_ft or {}
            opts.formatters_by_ft.javascript = { "prettier" }
            opts.formatters_by_ft.javascriptreact = { "prettier" }
            return opts
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            parsers = {
                lua = {},
            },
        },
    },

    {
        "hrsh7th/nvim-cmp",
        opts = {
            sources = {
                lazydev = {},
            },
        },
    },
}
