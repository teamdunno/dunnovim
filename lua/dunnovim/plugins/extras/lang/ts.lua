return {
    {
        "neovim/nvim-lspconfig",
        ft = { "typescript", "typescriptreact" },
        opts = {
            servers = {
                ts_ls = {},
            },
        },
    },

    {
        "stevearc/conform.nvim",
        ft = { "typescript", "typescriptreact" },
        opts = function(_, opts)
            opts.formatters_by_ft = opts.formatters_by_ft or {}
            opts.formatters_by_ft.typescript = { "prettier" }
            opts.formatters_by_ft.typescriptreact = { "prettier" }
            return opts
        end,
    },
}
