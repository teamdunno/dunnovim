return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "sindrets/diffview.nvim",
    },
    cmd = "Neogit",
    keys = {
        { "<leader>g", "", desc = "git" },
        { "<leader>gg", "<cmd>Neogit<cr>", desc = "Open Neogit" },
    },
}
