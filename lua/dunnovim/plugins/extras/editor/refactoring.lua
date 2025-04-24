return {
    {
        "ThePrimeagen/refactoring.nvim",
        cmd = { "Refactor" },
        keys = {
            { "<leader>r", "", desc = "+refactoring", mode = { "v" } },
            {
                "<leader>rr",
                function()
                    require("refactoring").select_refactor()
                end,
                mode = { "v" },
                desc = "Refactor",
            },
        },
        opts = {},
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
    },
}
