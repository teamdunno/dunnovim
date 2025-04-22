return {
    {
        "folke/noice.nvim",
        event = "VeryLazy",
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
