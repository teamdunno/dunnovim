return {
    {
        "sainnhe/everforest",
        name = "everforest",
        priority = 1000,
        colorscheme = "everforest",
        config = function()
            vim.o.termguicolors = true
        end,
    },
    { "folke/tokyonight.nvim", enabled = DunnoVim.config.colorscheme() == "tokyonight" },
}
