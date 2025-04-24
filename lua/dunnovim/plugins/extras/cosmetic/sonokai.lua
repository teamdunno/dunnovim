return {
    {
        "sainnhe/sonokai",
        priority = 1000,
        colorscheme = "sonokai",
        config = function()
            vim.o.termguicolors = true
        end,
    },
    { "folke/tokyonight.nvim", enabled = false },
}
