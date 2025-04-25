return {
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        priority = 1000,
        opts = {},
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
    },
    {
        "folke/snacks.nvim",
        opts = {
            notifier = { enabled = false },
        },
    },
}
