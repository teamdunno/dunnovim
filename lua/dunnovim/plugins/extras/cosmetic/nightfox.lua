return {
    {
        "EdenEast/nightfox.nvim",
        name = "nightfox.nvim",
        priority = 1000,
        colorscheme = "nightfox",
        config = function()
            vim.o.termguicolors = true
        end,
    },
    { "folke/tokyonight.nvim", enabled = false },
}
