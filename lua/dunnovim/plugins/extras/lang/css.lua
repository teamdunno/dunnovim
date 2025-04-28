return {
    {
        "neovim/nvim-lspconfig",
        ft = "css",
        opts = {
            servers = {
                cssls = {},
            },
        },
    },

    {
        "stevearc/conform.nvim",
        ft = "css",
        opts = function(_, opts)
            opts.formatters_by_ft = opts.formatters_by_ft or {}
            opts.formatters_by_ft.css = { "prettier" }
            return opts
        end,
    },
}
