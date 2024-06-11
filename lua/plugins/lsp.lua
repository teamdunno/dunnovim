return {
    {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v3.x',
	event = { "BufNewFile", "BufRead" },
	dependencies = {
	    'williamboman/mason.nvim',
	    'williamboman/mason-lspconfig.nvim',
	    'neovim/nvim-lspconfig',
	    'hrsh7th/cmp-nvim-lsp',
	    'hrsh7th/nvim-cmp',
	    'L3MON4D3/LuaSnip'
	},
	config = function()
	    local lsp_zero = require('lsp-zero')

	    lsp_zero.on_attach(function(_, bufnr)
		-- see :help lsp-zero-keybindings
		-- to learn the available actions
		lsp_zero.default_keymaps({buffer = bufnr})
	    end)

	    local cmp = require('cmp')

	    cmp.setup({
		mapping = cmp.mapping.preset.insert({
		    ['<CR>'] = cmp.mapping.confirm({select = false}),
		}),
	    })

	    require('mason').setup({})
	    require('mason-lspconfig').setup({
		handlers = {
		    function(server_name)
			-- custom settings for lua_ls
			if server_name == "lua_ls" then
			    require("lspconfig").lua_ls.setup({
				settings = {
				    Lua = {
					diagnostics = {
					    -- Get the language server to recognize the `vim` global
					    globals = {
						'vim',
						'require'
					    },
					},
					workspace = {
					    -- Make the server aware of Neovim runtime files
					    library = vim.api.nvim_get_runtime_file("", true),
					},
					-- Do not send telemetry data containing a randomized but unique identifier
					telemetry = {
					    enable = false,
					},
				    },
				},
			    })
			    return
			end

			require('lspconfig')[server_name].setup({})
		    end,
		},
		ensure_installed = { "pylsp", "rust_analyzer", "lua_ls" }
	    })
	end
    }
}
