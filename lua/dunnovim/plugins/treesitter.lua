return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPost", "BufNewFile" },
        build = ":TSUpdate",
        lazy = true,
        opts = {
            parsers = {},
        },
        config = function(_, opts)
            local ensure_installed = {}

            for lang, opts in pairs(opts.parsers) do
                table.insert(ensure_installed, lang)
            end

            require("nvim-treesitter.configs").setup({
                ensure_installed = ensure_installed,
                highlight = { enable = true },
            })
        end,
    },
}
