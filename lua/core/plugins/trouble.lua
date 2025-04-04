return {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
        { "<leader>td", "<cmd>Trouble diagnostics toggle<cr>",              desc = "Show Diagnostics (trouble)" },
        { "<leader>tD", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Show Diagnostics for this buffer (trouble)" },
        { "<leader>ts", "<cmd>Trouble symbols toggle focus=false<cr>",      desc = "Show Symbols (trouble)" },
    }
}
