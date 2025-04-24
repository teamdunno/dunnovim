return {
    {
        "catppuccin/nvim",
        name = "catppuccin.nvim",
        priority = 1000,
        colorscheme = "catppuccin",
        config = function()
            vim.o.termguicolors = true
        end,
    },
    { "folke/tokyonight.nvim", enabled = false },
}
