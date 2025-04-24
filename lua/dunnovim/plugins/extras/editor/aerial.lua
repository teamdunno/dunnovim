return {
    {
        "stevearc/aerial.nvim",
        cmd = { "AerialToggle", "AerialOpen", "AerialClose", "AerialNavToggle" },
        keys = {
            { "<leader>o", "<cmd>AerialToggle<CR>", desc = "Toggle Outline" },
        },
        opts = {
            backends = { "lsp", "treesitter", "markdown" },
            layout = {
                min_width = 28,
                default_direction = "right",
            },
            show_guides = true,
        },
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-lua/plenary.nvim",
        },
    },
}
