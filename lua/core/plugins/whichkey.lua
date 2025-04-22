return {
    "folke/which-key.nvim",
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        preset = "helix",
        spec = {
            {
                { "<leader>f", group = "find/files" },
                { "<leader>g", group = "git" },
                { "<leader>m", group = "miscallaneous" },
                { "<leader>t", group = "trouble/tree" }
            }
        }
    },
    keys = {
        "<leader>",
        "g",
        "d",
        "v",
        "c",
        "z",
        "=",
    },
}
