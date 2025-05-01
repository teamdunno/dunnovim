return {
    {
        "neovim/nvim-lspconfig",
        ft = "java",
        opts = {
            servers = {
                jdtls = {},
            },
        },
    },

    {
        "stevearc/conform.nvim",
        ft = "java",
        opts = function(_, opts)
            opts.formatters_by_ft = opts.formatters_by_ft or {}
            opts.formatters_by_ft.java = { "google_java_format" }
            return opts
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            parsers = {
                java = {},
            },
        },
    },
}
