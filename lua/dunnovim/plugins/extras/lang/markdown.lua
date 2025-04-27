return {
    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
        opts = {
            indent = {
                enabled = true,
            },
            heading = {
                icons = { "◉ ", "○ ", "✸ ", "✿ " },
            },
        },
        ft = "markdown",
    },
    {
        "stevearc/conform.nvim",
        ft = "markdown",
        opts = function(_, opts)
            opts.formatters_by_ft = opts.formatters_by_ft or {}
            opts.formatters_by_ft.markdown = { "markdownlint", "prettier" }
            return opts
        end,
    },
}
