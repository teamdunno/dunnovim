return {
    {
        "saecki/crates.nvim",
        event = { "BufRead Cargo.toml" },
        opts = {},
    },

    {
        "neovim/nvim-lspconfig",
        ft = "rust",
        opts = {
            servers = {
                rust_analyzer = {},
            },
        },
    },

    {
        "stevearc/conform.nvim",
        ft = "rust",
        opts = function(_, opts)
            opts.formatters_by_ft = opts.formatters_by_ft or {}
            opts.formatters_by_ft.rust = { "rustfmt", "rust_analyzer" }
            return opts
        end,
    },
}
