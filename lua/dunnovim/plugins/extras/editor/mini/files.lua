return {
    {
        "echasnovski/mini.files",
        opts = {},
        keys = {
            {
                "<leader>tt",
                function()
                    require("mini.files").open()
                end,
                desc = "Open mini.files",
            },
        },
    },

    {
        "folke/snacks.nvim",
        opts = {
            explorer = { enabled = false },
        },
        keys = {
            { "<leader>tt", false },
        },
    },
}
