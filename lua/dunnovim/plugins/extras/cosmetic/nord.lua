return {
    {
        "shaunsingh/nord.nvim",
        name = "nord.nvim",
        priority = 1000,
        colorscheme = "nord",
        config = function()
            vim.o.termguicolors = true
        end,
    },
    { "folke/tokyonight.nvim", enabled = false },
}
