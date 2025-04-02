return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
	"nvim-lua/plenary.nvim",
	"nvim-tree/nvim-web-devicons"
    },
    opts = {},
    cmd = "Telescope",
    keys = {
	{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
	{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
	{ "<leader>fd", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics" },
    }
}
