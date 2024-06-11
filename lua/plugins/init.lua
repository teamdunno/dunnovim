return {
    {
	"AlphaTechnolog/pywal.nvim",
	as = "pywal",
	colorscheme = "pywal",
	config = function() vim.cmd.colorscheme("pywal") end
    },
    {
	"folke/tokyonight.nvim",
	colorscheme = "tokyonight",
	-- config = function() vim.cmd.colorscheme("tokyonight") end
    },
    {
	"nvim-telescope/telescope.nvim",
	cmd = "Telescope",
	keys = {
	    { " ff", ":Telescope find_files<cr>" }
	},
	dependencies = "nvim-lua/plenary.nvim"
    },
    {
	"ggandor/leap.nvim",
	keys = { "s", "S" },
	config = function() require("leap").create_default_mappings() end
    },
    {
	"nvim-lualine/lualine.nvim",
	opts = { options = { theme = "pywal-nvim" } }
    },
    {
	"akinsho/toggleterm.nvim",
	opts = {},
	keys = {
	    { " t", ":ToggleTerm<cr>" }
	}
    },
    {
	"tpope/vim-fugitive",
	cmd = "Git",
	keys = {
	    { " g", ":Git<cr>" }
	}
    },
    {
	"lewis6991/gitsigns.nvim",
	opts = {}
    },
    {
	"folke/trouble.nvim",
	keys = {
	    { " t", ":Trouble<cr>" }
	}
    }
}
