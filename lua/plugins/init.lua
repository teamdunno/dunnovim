return {
    {
	"AlphaTechnolog/pywal.nvim",
	as = "pywal",
	colorscheme = "pywal",
	-- config = function() vim.cmd.colorscheme("pywal") end
    },
    {
	"folke/tokyonight.nvim",
	colorscheme = "tokyonight",
	config = function() vim.cmd.colorscheme("tokyonight") end
    },
    {
	"nvim-telescope/telescope.nvim",
	cmd = "Telescope",
	keys = {
	    { "<leader>ff", ":Telescope find_files<cr>" }
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
	-- opts = { options = { theme = "pywal-nvim" } }
	opts = {}
    },
    {
	"akinsho/toggleterm.nvim",
	opts = {},
	keys = {
	    { "<leader>tt", ":ToggleTerm<cr>" }
	}
    },
    {
	"lewis6991/gitsigns.nvim",
	opts = {}
    },
    {
	"folke/trouble.nvim",
	keys = {
	    { "<leader>tr", ":Trouble<cr>" }
	}
    },
    {
	"kdheepak/lazygit.nvim",
	cmd = {
	    "LazyGit",
	    "LazyGitConfig",
	    "LazyGitCurrentFile",
	    "LazyGitFilter",
	    "LazyGitFilterCurrentFile",
	},
	dependencies = {
	    "nvim-lua/plenary.nvim",
	},
	keys = {
	    { "<leader>g", ":LazyGit<cr>" }
	}
    }
}
