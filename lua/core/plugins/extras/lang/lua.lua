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
}
