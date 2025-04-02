return {
    {
        "romgrk/barbar.nvim",
        event = "BufReadPre",
        dependencies = {
            "nvim-tree/nvim-web-devicons", -- Optional dependency for icons
        },
	opts = {},
	keys = {
	    { "<A-.>", "<Cmd>BufferNext<CR>", mode = "n", silent = true },
	    { "<A-,>", "<Cmd>BufferPrevious<CR>", mode = "n", silent = true },

	    -- Re-order to previous/next
	    { "<A-<>", "<Cmd>BufferMovePrevious<CR>", mode = "n", silent = true },
	    { "<A->>", "<Cmd>BufferMoveNext<CR>", mode = "n", silent = true },

	    -- Goto buffer in position
	    { "<A-1>", "<Cmd>BufferGoto 1<CR>", mode = "n", silent = true },
	    { "<A-2>", "<Cmd>BufferGoto 2<CR>", mode = "n", silent = true },
	    { "<A-3>", "<Cmd>BufferGoto 3<CR>", mode = "n", silent = true },
	    { "<A-4>", "<Cmd>BufferGoto 4<CR>", mode = "n", silent = true },
	    { "<A-5>", "<Cmd>BufferGoto 5<CR>", mode = "n", silent = true },
	    { "<A-6>", "<Cmd>BufferGoto 6<CR>", mode = "n", silent = true },
	    { "<A-7>", "<Cmd>BufferGoto 7<CR>", mode = "n", silent = true },
	    { "<A-8>", "<Cmd>BufferGoto 8<CR>", mode = "n", silent = true },
	    { "<A-9>", "<Cmd>BufferGoto 9<CR>", mode = "n", silent = true },
	    { "<A-0>", "<Cmd>BufferLast<CR>", mode = "n", silent = true },

	    -- Pin/unpin buffer
	    { "<A-p>", "<Cmd>BufferPin<CR>", mode = "n", silent = true },

	    -- Close buffer
	    { "<A-w>", "<Cmd>BufferClose<CR>", mode = "n", silent = true },
	    { "<A-s-w>", "<Cmd>BufferRestore<CR>", mode = "n", silent = true },

	    -- Magic buffer-picking mode
	    { "<C-p>", "<Cmd>BufferPick<CR>", mode = "n", silent = true },
	    { "<C-s-p>", "<Cmd>BufferPickDelete<CR>", mode = "n", silent = true },
	},
    },
}
