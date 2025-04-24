return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        { "<leader>h",  "",                                    desc = "+harpoon" },
        { "<leader>ha", desc = "Add to harpoon list" },
        { "<leader>hh", desc = "Show harpoon list" },
        { "<leader>hc", desc = "Clear the harpoon list" },
        { "<M-q>",      desc = "Jump to first file (harpoon)" },
        { "<M-w>",      desc = "Jump to second file (harpoon)" },
        { "<M-e>",      desc = "Jump to third file (harpoon)" },
        { "<M-r>",      desc = "Jump to fourth file (harpoon)" },
    },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup({})

        vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
        vim.keymap.set("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        vim.keymap.set("n", "<leader>hc", function()
            vim.notify("Cleared the harpoon list")
            harpoon:list():clear()
        end)

        vim.keymap.set("n", "<M-q>", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<M-w>", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<M-e>", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<M-r>", function() harpoon:list():select(4) end)
    end
}
