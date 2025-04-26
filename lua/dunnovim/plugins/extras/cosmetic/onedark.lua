return {
    {
        "navarasu/onedark.nvim",
        name = "onedark.nvim",
        priority = 1000,
        colorscheme = "onedark",
        config = function()
            vim.o.termguicolors = true
        end,
    },
    { "folke/tokyonight.nvim", enabled = DunnoVim.config.colorscheme() == "tokyonight" },
}
