return {
    "folke/which-key.nvim",
    event = "VeryLazy", -- Lazy-load on UI init
    opts = {
        preset = "helix",
        spec = {
            {
                { "<leader>f", group = "find/files" },
                { "<leader>g", group = "git" },
                { "<leader>m", group = "miscallaneous" },
                { "<leader>t", group = "trouble/tree" },
            },
        },
    },
}
