return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {},
    event = "VeryLazy",
    keys = {
        { "<Tab>", "<cmd>bnext<cr>" },
        { "<S-Tab>", "<cmd>bprev<cr>" },
        { "<A-w>", "<cmd>bdelete<cr>" },
    },
}
