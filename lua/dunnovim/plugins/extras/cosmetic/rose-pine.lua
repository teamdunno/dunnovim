return {
    {
        "rose-pine/neovim",
        name = "rose-pine.nvim",
        priority = 1000,
        colorscheme = "rose-pine",
        config = function()
            vim.o.termguicolors = true
        end,
    },
    { "folke/tokyonight.nvim", enabled = DunnoVim.config.colorscheme() == "tokyonight" },
}
