return {
    {
        "savq/melange-nvim",
        name = "melange-nvim",
        priority = 1000,
        colorscheme = "melange",
        config = function()
            vim.o.termguicolors = true
        end,
    },
    { "folke/tokyonight.nvim", enabled = DunnoVim.config.colorscheme() == "tokyonight" },
}
