return {
    {
        "neovim/nvim-lspconfig",
        ft = { "javascript", "javascriptreact" },
        opts = {
            servers = {
                ts_ls = {},
            },
        },
    },

    {
        "stevearc/conform.nvim",
        ft = { "javascript", "javascriptreact" },
        opts = function(_, opts)
            opts.formatters_by_ft = opts.formatters_by_ft or {}
            opts.formatters_by_ft.javascript = { "prettier" }
            opts.formatters_by_ft.javascriptreact = { "prettier" }
            return opts
        end,
    },
}
