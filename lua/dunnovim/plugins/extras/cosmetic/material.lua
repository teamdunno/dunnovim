return {
    {
        "marko-cerovac/material.nvim",
        name = "material.nvim",
        priority = 1000,
        colorscheme = "material",
        config = function()
            vim.o.termguicolors = true
        end,
    },
    { "folke/tokyonight.nvim", enabled = false },
}
