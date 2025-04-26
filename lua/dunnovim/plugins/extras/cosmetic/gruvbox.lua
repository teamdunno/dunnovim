return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        colorscheme = "gruvbox",
        config = function()
            vim.o.termguicolors = true
        end,
    },
    { "folke/tokyonight.nvim", enabled = DunnoVim.config.colorscheme() == "tokyonight" },
}
