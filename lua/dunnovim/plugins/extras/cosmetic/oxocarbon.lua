return {
    {
        "nyoom-engineering/oxocarbon.nvim",
        name = "oxocarbon.nvim",
        priority = 1000,
        colorscheme = "oxocarbon",
        config = function()
            vim.o.termguicolors = true
        end,
    },
    { "folke/tokyonight.nvim", enabled = false },
}
