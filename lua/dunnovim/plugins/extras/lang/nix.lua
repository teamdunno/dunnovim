return {
    {
        "neovim/nvim-lspconfig",
        ft = "nix",
        opts = {
            servers = {
                rnix = {}, -- legacy, use only if nixd is not suitable
                nixd = {}, -- recommended modern LSP
            },
        },
    },

    {
        "stevearc/conform.nvim",
        ft = "nix",
        opts = function(_, opts)
            opts.formatters_by_ft = opts.formatters_by_ft or {}
            if not vim.fn.has("windows") then
                opts.formatters_by_ft.nix = { "alejandra" }
            end
            return opts
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            parsers = {
                nix = {},
            },
        },
    },
}
