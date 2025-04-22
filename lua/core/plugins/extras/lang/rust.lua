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
}
