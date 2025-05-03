return {
    {
        "allaman/emoji.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        keys = {
            { "<leader>e", "", desc = "+emoji" },
            { "<leader>ee", "<cmd>Emoji<cr>", desc = "Select an emoji" },
            { "<leader>ek", "<cmd>Emoji kaomoji<cr>", desc = "Select a kaomoji" },
        },
        opts = {
            enable_cmp_integration = true,
        },
    },

    {
        "hrsh7th/nvim-cmp",
        opts = {
            sources = {
                emoji = {},
            },
        },
    },
}
