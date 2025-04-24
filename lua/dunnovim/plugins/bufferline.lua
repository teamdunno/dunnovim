return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local bufferline = require("bufferline")
        bufferline.setup({})

        -- Set Alt+1 through Alt+9 to switch to buffers 1–9
        for i = 1, 9 do
            vim.keymap.set("n", "<A-" .. i .. ">", function()
                bufferline.go_to(i, true)
            end, { desc = "Go to buffer " .. i })
        end
    end,
    event = { "BufAdd" },
    keys = (function()
        local keys = {
            { "<Tab>", "<cmd>bnext<cr>", desc = "Next buffer" },
            { "<S-Tab>", "<cmd>bprev<cr>", desc = "Previous buffer" },
            { "<A-w>", "<cmd>bdelete<cr>", desc = "Close buffer" },
        }

        -- Add Alt+1 through Alt+9 to keys list
        for i = 1, 9 do
            table.insert(keys, { "<A-" .. i .. ">", desc = "Go to buffer " .. i })
        end

        return keys
    end)(),
}
