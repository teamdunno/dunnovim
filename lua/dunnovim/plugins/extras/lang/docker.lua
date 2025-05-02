return {
    {
        "neovim/nvim-lspconfig",
        ft = "dockerfile",
        opts = {
            servers = {
                dockerls = {},
            },
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            parsers = {
                dockerfile = {},
            },
        },
    },
}
