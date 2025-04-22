return {
    {
        "saecki/crates.nvim",
        event = { "BufRead Cargo.toml" },
        opts = {},
    },

    {
        "neovim/nvim-lspconfig",
        ft = "rs",
        opts = {
            servers = {
                rust_analyzer = {},
            },
        },
    },


    {
        "stevearc/conform.nvim",
        opts = function(_, opts)
            opts.formatters_by_ft = opts.formatters_by_ft or {}
            table.insert(opts.formatters_by_ft, {
                rust = { "rustfmt", "rust_analyzer" }
            })
            return opts
        end
    }
}
