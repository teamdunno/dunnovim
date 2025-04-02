vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        local opts = { buffer = event.buf }

        -- these will be buffer-local keybindings
        -- because they only work if you have an active language server

        vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
        vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
        vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
        vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
        vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
        vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
        vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
        vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
        vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
        vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
    end
})

return {
    -- Mason to handle LSP installations
    {
        'williamboman/mason.nvim',
        event = { "BufReadPre", "BufNewFile" },
        opts = {}
    },

    -- Mason LSPConfig integration
    {
        'williamboman/mason-lspconfig.nvim',
        dependencies = {
            "williamboman/mason.nvim",
            "neovim/nvim-lspconfig"
        },
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            local lspconfig = require('lspconfig')
            require('mason-lspconfig').setup({
                ensure_installed = { 'lua_ls', 'rust_analyzer' }, -- Add more LSP servers here if needed
            })
            require('mason-lspconfig').setup_handlers({
                function(server_name)
                    -- Default setup for every LSP server
                    lspconfig[server_name].setup {}
                end,
            })
        end
    },

    -- LSPConfig for configuring LSP servers
    {
        'neovim/nvim-lspconfig',
        event = { "BufReadPre", "BufNewFile" }
    },

    -- nvim-cmp for autocompletion
    {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = {
            "hrsh7th/cmp-nvim-lsp"
        },
        config = function()
            local cmp = require('cmp')

            cmp.setup({
                completion = {
                    autocomplete = { cmp.TriggerEvent.TextChanged, cmp.TriggerEvent.InsertEnter },
                },
                mapping = cmp.mapping.preset.insert({
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                }),
                sources = {
                    { name = 'nvim_lsp' },
                },
            })
        end
    },
}
