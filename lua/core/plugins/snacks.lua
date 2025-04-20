return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    ---@type snacks.Config
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        bigfile = { enabled = true },
        indent = { enabled = true },
        input = { enabled = true },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        picker = { enabled = true },
        words = { enabled = true },
        explorer = { enabled = true },
        dashboard = {
            enabled = true,
            sections = {
                {
                    {
                        text = [[              _
             | |
__      _____| | ___ ___  _ __ ___   ___
\ \ /\ / / _ \ |/ __/ _ \| '_ ` _ \ / _ \
 \ V  V /  __/ | (_| (_) | | | | | |  __/
  \_/\_/ \___|_|\___\___/|_| |_| |_|\___|]],
                        hl = "header1",
                        padding = 1,
                        indent = 8,
                    },
                    { section = "startup" },
                    gap = 1,
                    padding = 1,
                    pane = 1,
                },
                {
                    { section = "keys", title = "Shortcuts", icon = "󰌌 ", indent = 2 },
                    { text = "\n" },
                    { section = "recent_files", cwd = true, title = "Quick Links", icon = "󰥔 ", indent = 2 },
                    pane = 2,
                },
            },
        },
        statuscolumn = { enabled = true },
        terminal = { enabled = true },
        zen = { enabled = true },
        lazygit = { enabled = true },
    },
    keys = {
        {
            "~",
            function()
                Snacks.terminal.open("powershell")
            end,
            mode = "n",
            desc = "Open a terminal",
        },
        {
            "<leader>tt",
            function()
                Snacks.explorer()
            end,
            desc = "Open the file explorer",
        },
        {
            "<leader>ff",
            function()
                Snacks.picker.files()
            end,
            desc = "Find files",
        },
        {
            "<leader>fg",
            function()
                Snacks.picker.grep()
            end,
            desc = "Live grep",
        },
        {
            "<leader>fd",
            function()
                Snacks.picker.diagnostics()
            end,
            desc = "Diagnostics",
        },
        {
            "<leader>mz",
            function()
                Snacks.zen()
            end,
            mode = "n",
            desc = "Misc: Enter zen",
        },
        {
            "<leader>gb",
            function()
                Snacks.picker.git_branches()
            end,
            desc = "Git Branches",
        },
        {
            "<leader>gl",
            function()
                Snacks.picker.git_log()
            end,
            desc = "Git Log",
        },
        {
            "<leader>gL",
            function()
                Snacks.picker.git_log_line()
            end,
            desc = "Git Log Line",
        },
        {
            "<leader>gs",
            function()
                Snacks.picker.git_status()
            end,
            desc = "Git Status",
        },
        {
            "<leader>gS",
            function()
                Snacks.picker.git_stash()
            end,
            desc = "Git Stash",
        },
        {
            "<leader>gd",
            function()
                Snacks.picker.git_diff()
            end,
            desc = "Git Diff (Hunks)",
        },
        {
            "<leader>gf",
            function()
                Snacks.picker.git_log_file()
            end,
            desc = "Git Log File",
        },
        {
            "<leader>gg",
            function()
                Snacks.lazygit.open()
            end,
            desc = "Open LazyGit",
        },
        {
            "gd",
            function()
                Snacks.picker.lsp_definitions()
            end,
            desc = "Goto Definition",
        },
        {
            "gD",
            function()
                Snacks.picker.lsp_declarations()
            end,
            desc = "Goto Declaration",
        },
        {
            "gr",
            function()
                Snacks.picker.lsp_references()
            end,
            nowait = true,
            desc = "References",
        },
        {
            "gI",
            function()
                Snacks.picker.lsp_implementations()
            end,
            desc = "Goto Implementation",
        },
        {
            "gt",
            function()
                Snacks.picker.lsp_type_definitions()
            end,
            desc = "Goto Type Definition",
        },
    },
}
