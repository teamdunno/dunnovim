return {
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa.nvim",
        priority = 1000,
        colorscheme = "kanagawa",
        config = function()
            vim.o.termguicolors = true
        end,
    },
    { "folke/tokyonight.nvim", enabled = false },
}
