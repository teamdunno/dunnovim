return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    lazy = true,
    ---@module "neo-tree"
    opts = {},
    cmd = "Neotree",
    keys = {
        { "<leader>t", "<cmd>Neotree toggle<cr>", desc = "Toggle neotree" }
    }
}
